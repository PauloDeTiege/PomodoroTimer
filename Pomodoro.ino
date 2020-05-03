/* 
Pomodoro Timer v1.0
by Paulo De Tiège
25 April 2020

AtMega328P connected to 
- 74HC393 decade counter connected to
  - Four 5mm red LEDs
  - Three 3mm red LEDs
- One 5mm red LED
- Buzzer
- Button
- One 3mm yellow LED
*/

//// Globals ////

// Pin definitions
const int decade_clock    = 2;        // Decade counter 1-15 input pin
const int decade_reset    = 3;        // Decade counter reset pin
const int led_bin16       = 4;        // LED for 16+ numbers
const int decade_clock_2  = 5;        // Pomodoro counter
const int decade_reset_2  = 6;        // Pomodoro counter reset
const int led_pause       = 7;        // Yellow pause led
const int buzzer          = 8;        // Buzzer
const int button          = 9;        // Pause button

// Set the intervals
const long pomodoro       = 25;       // One pomodoro is 25 minutes
const long small_break    = 05;       // A small break is 5 minutes
const long big_break      = 30;       // A big break is 30 minutes
const long interval       = 60000;      // Set the interval to 1 minute

// Trackers
int countdown = pomodoro;             // Start with a pomodoro
int number_pomodoros = 0;             // Number of pomodoros run
int state = 0;                        // 0 = pomodoro, 1 = break
int previous_state = 0;               // Tracker for pause resume
long previous_millis = 0;              // Timer

void setup() {
  // Set up pins
  pinMode(decade_clock, OUTPUT);      // 4-bit binary counter
  pinMode(decade_reset, OUTPUT);      // Reset
  pinMode(led_bin16, OUTPUT);         // Binary counter 5th bit
  pinMode(decade_clock_2, OUTPUT);    // Pomodoro counter
  pinMode(decade_reset_2, OUTPUT);    // Pomodoro counter reset
  pinMode(led_pause, OUTPUT);         // Yellow pause led
  pinMode(buzzer, OUTPUT);            // Buzzer
  pinMode(button, INPUT_PULLUP);      // Pause button

  // Reset any counters to clear initial static
  digitalWrite(decade_reset, HIGH);
  digitalWrite(decade_reset, LOW);
  digitalWrite(decade_reset_2, HIGH);
  digitalWrite(decade_reset_2, LOW);

  Serial.begin(9600);

  // Initialize the first pomodoro
  write_binary_time(countdown);
  buzz_pomodoro();
  previous_millis = millis();
}

void write_binary_time(int number){
    // Wipe the current display
    digitalWrite(decade_reset, HIGH);
    digitalWrite(decade_reset, LOW);
    
    // Check if we need to light the 15+ LED
    if (number > 15) digitalWrite(led_bin16, HIGH);
    else digitalWrite(led_bin16, LOW);
    
    // Count up to the current number
    for (number; number > 0; number--) {
      digitalWrite(decade_clock, HIGH);
      digitalWrite(decade_clock, LOW); 
    }
}
  
void write_pomodoros(){
  // Wipe the current display
  digitalWrite(decade_reset_2, HIGH);
  digitalWrite(decade_reset_2, LOW);

  // Increment the counter
  int i = number_pomodoros;
  for (i; i > 0; i--) {
    digitalWrite(decade_clock_2, HIGH);
    digitalWrite(decade_clock_2, LOW);
  }
}

void buzz_pause(){
  for (int x = 0; x < 2; x++) {
    digitalWrite(buzzer, HIGH);
    delay(75);
    digitalWrite(buzzer, LOW);
    delay(75);  
  }
}

void buzz_pomodoro() {
  digitalWrite(buzzer, HIGH);
  delay(300);
  digitalWrite(buzzer, LOW);
}

void pause() {
  buzz_pause();
  unsigned long pause_start = millis();
  while (digitalRead(button) == HIGH) {
    if (millis() - pause_start >= 500) {
      if (digitalRead(led_pause) == LOW) digitalWrite(led_pause, HIGH);
      else digitalWrite(led_pause, LOW);
      pause_start = millis();
    }
  }
  buzz_pomodoro();  
}

void loop() {
  if (millis() - previous_millis >= interval) {
    countdown-=1;
    write_binary_time(countdown);
    previous_millis = millis();
  }
  
  // Check if the user wants to pause or reset
  if (digitalRead(button) == LOW) {
    unsigned long start_press = millis();
    while (digitalRead(button) == LOW) {};

    // Less than half a second is a pause
    if (millis() - start_press < 500) pause();

    // More than half a second is a reset
    else {
      if (state == 0) {
        countdown = pomodoro +1;
        buzz_pomodoro();
      } else {
        countdown = small_break +1; // Always shorten to small break
        buzz_pause();
      }
      previous_millis = millis();
    }
  }

  // Turn on the pause LED if it's a break
  if (state == 1) digitalWrite(led_pause, HIGH);
  else digitalWrite(led_pause, LOW);

  // If a pomodoro is done, update relevant counters, and start a pause
  if (state == 0 && countdown == 0) {
    number_pomodoros += 1;
    write_pomodoros();
    state = 1;
    // Reset the timer, adding one to correct the off-by-one  
    previous_millis = millis();
    if (number_pomodoros == 4) countdown = big_break + 1;
    else countdown = small_break + 1; 
    buzz_pause();
  }

  // If a pause is done, update relevant counters, and start a pomodoro
  if (state == 1 && countdown == 0) {
    if (number_pomodoros == 4) number_pomodoros = 0;
    write_pomodoros();
    state = 0;
    // Reset the timer, adding one to correct the off-by-one
    previous_millis = millis();
    countdown = pomodoro + 1;
    buzz_pomodoro();
  }
}
