#define LED_OE  21
#define LED_LE  20
#define LED_CLK 16
#define LED_SDI 12
#define DELAY_TIME 1

#include "gpio.hpp"

FilaWall::FilaWall(int length) {
  this->length = length;
  setup();
}

FilaWall::FilaWall(int length, int poe, int ple, int pclk, int psdi) {
  this->length = length;
  this->pinOE = poe;
  this->pinLE = ple;
  this->pinCLK = pclk;
  this->pinSDI = psdi;
  setup();
}

void FilaWall::setup() {
  if(wiringPiSetupGpio()<0) {
    std::cout << "Failed to initialize GPIO, please check if root access is granted.";
    exit(-1);
  }
  pinMode(pinOE,OUTPUT);
  pinMode(pinLE,OUTPUT);
  pinMode(pinCLK,OUTPUT);
  pinMode(pinSDI,OUTPUT);
  digitalWrite(pinOE,HIGH);
  digitalWrite(pinLE,LOW);
  digitalWrite(pinSDI,HIGH);
  digitalWrite(pinCLK,LOW);
  digitalWrite(pinOE,LOW);
}

void FilaWall::tick() {
  digitalWrite(pinCLK,HIGH);
  delay(1);
  digitalWrite(pinCLK,LOW);
  delay(1);
}

void FilaWall::output() {
  digitalWrite(pinLE,HIGH);
  delay(1);
  digitalWrite(pinLE,LOW);
  delay(1);
}

void FilaWall::clear() {
  for(int i=0; i<length; ++i) {
    digitalWrite(pinSDI, 0);
    delay(1); tick();
  }
  this->output();
}

void FilaWall::display(unsigned short * data) {
  //data is an array containing u16 (unsigned short), which represents one LED cell.
  if(length != 16 * sizeof(data)) {
    std::cout << "Invalid data size. The device is set to drive " << length << " bits.";
    exit(-2);
  }
  for(int i=0; i<sizeof(data); ++i) {
    for(int bit=0; bit<16; ++bit) {
      int value = data[i] & (1<<bit);
      digitalWrite(pinSDI, value);
      delay(1); tick();
    }
  }
  this->output();
}
