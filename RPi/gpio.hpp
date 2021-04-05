#include <wiringPi.h>
#include <iostream>

class FilaWall {
  public:
  int pinOE, pinLE, pinCLK, pinSDI, length;
  FilaWall(int length);
  FilaWall(int length, int poe, int ple, int pclk, int psdi);
  void setup();
  void clear();
  void display(unsigned short * data);
  void tick();
  void output();
};