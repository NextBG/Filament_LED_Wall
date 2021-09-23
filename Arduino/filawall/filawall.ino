#include <Arduino.h>

#define LED_OE  9
#define LED_LE  6
#define LED_CLK 3
#define LED_SDI 5

#define DEBUG

void debug(String debugInfo){
#ifdef DEBUG
  Serial.println(debugInfo);
#endif
}

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
  debug("Init done!");

  digitalWrite(LED_OE, 0);
}

inline void toggleClock() {
  digitalWrite(LED_CLK, 1);
  digitalWrite(LED_CLK, 0);
}

inline void toggleLatch() {
  digitalWrite(LED_LE, 1);
  digitalWrite(LED_LE, 0);
}

void loop() {
  // Read command from serial port
  while (Serial.available() > 0) {
    readMsg(Serial.read());
  }
}

void readMsg(char msg) {
    char cmd = msg >> 4;
    char data = msg & 0x0F;
    if(cmd == 0x0) {
      for(int i=0; i<4; ++i) {
        digitalWrite(LED_SDI, data & (0x1 << i));
        toggleClock();
      }
    } else if(cmd == 0x1) {
      toggleLatch();
    }
}
