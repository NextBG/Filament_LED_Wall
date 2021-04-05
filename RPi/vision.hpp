#include<iostream>
#include<opencv2/opencv.hpp>

class Vision {
  public:
  int height, width;
  double threshold;
  cv::InputArray * image;
  Vision(int cam, int height, int width);
  //Input
  void capture();
  void setFrom(); //unused
  //Output
  unsigned short * getFilaData();
}