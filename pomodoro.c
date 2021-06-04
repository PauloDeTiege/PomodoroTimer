/* pomodoro.c */
/*
 * Pomodoro Timer r2
 * by Paulo De Tiège
 * 2021 May 09
 * 
*/

#ifndef F_CPU
#define F_CPU 1000000UL
#endif

//// Includes ////
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/io.h>
#include <avr/sleep.h>

//// Globals ////

// Pin definitions
#define BUZZER 		PA5				// Buzzer for pause/start
#define PAUSE_BUTTON 	PA6				// Button for pause/reset
#define PAUSE_LED 	PA7				// LED for pause indication

// Intervals
#define POMODORO 	25				// One pomodoro is 25 minutes
#define SMALL_BREAK 	5				// A small break is 5 minutes
#define BIG_BREAK 	30				// A big break is 30 minutes
#define MINUTE		60				// A minute is 60 seconds

// Trackers
unsigned short countdown 	= POMODORO;		// Start with a pomodoro
unsigned short number_pomodoros	= 0;			// Number of pomodoros run
unsigned short state 		= 0;			// 0 = pomodoro, 1 = break, 2 = pause
unsigned short previous_state	= 0;			// State to return to after a pause
unsigned short seconds		= 1;			// Tracker for the seconds passed

//// Functions ////

// Configure the interrupts
static inline void initInterrupt(void) {
	// Set the Clock Prescaler down to /32
	cli();
	CLKPR = (1 << CLKPCE);				// Set Clock Prescaler Change Enable
	CLKPR = 0x05;					// Set Clock Prescaler to /32 (0x05)

	// Clock timer interrupt setup
	TIMSK0 |= (1 << OCIE0A);			// Enable Compare Match A interrupts
	TCCR0A |= (1 << WGM01);				// Put the Waveform Generator in CTC mode
	TCCR0B |= (1 << CS02) | (1 << CS00);		// Set the clock bit to /1024 prescaling
	OCR0A = 242;					// Set Compare Match A to 243 cycles == 1s
	
	// Button timer interrupt setup
	TIMSK1 |= (1 << OCIE1A);			// Enable Compare Match A interrupts
	TCCR1B |= (1 << WGM12);				// Put the Waveform Generator in CTC mode
	TCCR1B |= (1 << CS10);				// Set the clock bit to no prescaling
	OCR1A = 255;					// Set Compare Match A to 12 cycles == 50ms

	sei(); 						// Enable interrupts
	set_sleep_mode(SLEEP_MODE_IDLE);		// Use the Idle sleep mode
}

// Write the current time left in binary
void write_binary_time() {
	unsigned short number = countdown;

	PORTA 	&= 0b11100000;	// Clear out the LEDs
	number 	&= 0b00011111;	// Make sure that PA5, PA6, and PA7 aren't written to	
	PORTA 	|= number;	// Light the relevant LEDs
}

// Write the current pomodoros done in binary
void write_pomodoros(){
	unsigned short number = number_pomodoros;

	PORTB 	&= 0b0000;	// Clear out the LEDs
	number 	&= 0b0111;	// Make sure that PB3 isn't written to
	PORTB 	|= number;	// Light the relevant LEDs
}

// Emit two short beeps to indicate a pause
void buzz_pause(){
	for (int x = 0; x < 2; x++) {
		PORTA |= _BV(BUZZER);
		_delay_ms(50);
		PORTA &= ~(_BV(BUZZER));
		_delay_ms(50);
	}
}

// Emit a single long beep to indicate a pomodoro
void buzz_pomodoro(){
	PORTA |= _BV(BUZZER);
	_delay_ms(100);
	PORTA &= ~(_BV(BUZZER));
}

unsigned char button_state() {
	if (!(PINA & (1 << PAUSE_BUTTON))) { 				// Check pause button low
		_delay_ms(25);
		if (!(PINA & (1 << PAUSE_BUTTON))) return 1;
	}
	return 0;
}

//// Interrupts ////

// Clock compare interrupt
ISR(TIM0_COMPA_vect) {
	seconds++;
	// TODO: Count the seconds in a minute
	if (state == 2) PORTA ^= _BV(PAUSE_LED);
	else if (seconds >= MINUTE) {
		seconds = 1;
		countdown -= 1;
	}
}

// Pause compare interrupt
ISR(TIM1_COMPA_vect) {
	if (button_state()) {						// Check buttonpress
		if (state != 2) {					// If it was not paused
			previous_state = state;	
			state = 2;
			OCR0A = 121;					// Half-second blinks
		}
		else {							// If returning from pause
			state = previous_state;				// Re-set state
			OCR0A = 242;					// Full-second timer
			if (state == 1) PORTA |= _BV(PAUSE_LED);	// Re-set Pause LED
			else PORTA &= ~(_BV(PAUSE_LED));
		}
	}
}

//// Main function ////
int main() {
	// Data direction definitions
	DDRA = 0xBF;			// All of PORTA is output, except for PA6
	DDRB = 0x07;			// All of PORTB is output, except for PB3

	// Pin settings
	PORTA |= (1 << PAUSE_BUTTON);	// Enable pullup and pushbutton on PA6

	// Set up the interrupts
	initInterrupt();

	buzz_pomodoro();		// Announce the pomodoro

	while (1) {
		// If a pomodoro is done, update relevant counters, and start a pause	
		if (state == 0 && countdown == 0) {
			number_pomodoros += 1;
			write_pomodoros();

			// Start a pause
			state = 1;						
			if (number_pomodoros == 4) countdown = BIG_BREAK;
			else countdown = SMALL_BREAK;			
			PORTA |= _BV(PAUSE_LED);
			buzz_pause();
		}

		// If a pause is done, update relevant counters, and start a pomodoro
		if (state == 1 && countdown == 0) {
			if (number_pomodoros == 4) number_pomodoros = 0;
			write_pomodoros();

			// Start a pomodoro
			state = 0;
			countdown = POMODORO;
			PORTA &= ~(_BV(PAUSE_LED));
			buzz_pomodoro();
		}

		write_binary_time();
		sleep_mode();		// Do nothing and wait for interrupts
	}
}
