#include <Arduino.h>

#define LED_OE  9
#define LED_LE  6
#define LED_CLK 3
#define LED_SDI 5

void setup() {
  Serial.begin(115200);
  
  pinMode(LED_OE, OUTPUT);
  pinMode(LED_LE, OUTPUT);
  pinMode(LED_CLK, OUTPUT);
  pinMode(LED_SDI, OUTPUT);

  digitalWrite(LED_OE, 1);
  digitalWrite(LED_LE, 0);
  digitalWrite(LED_SDI, 1);
  digitalWrite(LED_CLK, 0);
  Serial.println("Init done!");

  digitalWrite(LED_OE, 0);
}

void loop() {
  // Read command from serial port
  while (Serial.available() > 0) {
    int cmd = Serial.parseInt();
    if (Serial.read() == '\n')
      readCmd(cmd);
  }
}

inline void tick() {
  digitalWrite(LED_CLK, 1);
  digitalWrite(LED_CLK, 0);
}

inline void tock() {
  digitalWrite(LED_LE, 1);
  digitalWrite(LED_LE, 0);
}

void readCmd(unsigned int cmd) {
  switch(cmd) {
    case 0: // Black Pixel
      digitalWrite(LED_SDI, 1);
      tick();
      break;
    case 1: // White pixel
      digitalWrite(LED_SDI, 0);
      tick();
      break;
    case 2: // Output
      tock();
      break;
  }
}
