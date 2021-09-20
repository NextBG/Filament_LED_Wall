import cv2
import serial
import time
import pyrealsense2 as rs
import matplotlib.pyplot as plt
import numpy as np

# 屏幕设置
screenWidth = 3
screenHeight = 3

pixelWidth = screenWidth * 4
pixelHeight = screenHeight * 4

# Open Serial port
port = 'COM6'
ser = serial.Serial(port, 115200, timeout=0.5)
time.sleep(2)
print("Serial port {} opened".format(port))

def sendCmd(cmd):
    ser.write((str(cmd) + '\n').encode())
    return 

# Realsense D415i setting
pipeline = rs.pipeline()
config = rs.config()
config.enable_stream(rs.stream.depth, 640, 480, rs.format.z16, 30)
pipeline.start(config)

# 向下位机输出16个像素
def displayUnit(unitRow, unitCol, image):
    for row in range(unitRow * 4 + 4 - 1, unitRow * 4 - 1, -1):
        for col in range(unitCol * 4 + 4 - 1, unitCol * 4 - 1, -1):
            sendCmd(int(not image[row][col] > 0))

while True:
    frames = pipeline.wait_for_frames()
    depth_rs = frames.get_depth_frame()

    # 格式转换
    depth = np.asanyarray(depth_rs.get_data())

    # 获取灰度深度图最大4米
    dimg_gray = cv2.convertScaleAbs(depth, alpha=255/4000)

    # 镜像 
    dimg_gray = cv2.flip(dimg_gray, 1)

    # 裁剪成正方形
    gray_part = dimg_gray[0:480, 80:540]

    # 缩放，降低分辨率
    gray_blur = cv2.blur(gray_part, (30, 30))
    gray_rescaled = cv2.resize(gray_blur, (pixelWidth, pixelHeight))
    ret, gray_thresh = cv2.threshold(gray_rescaled, 100, 255, cv2.THRESH_BINARY_INV)

    # 电脑端显示
    gray_rescaled_show = cv2.resize(gray_thresh, (480, 480), interpolation=cv2.INTER_AREA) 
    color_depth = cv2.applyColorMap(gray_part, cv2.COLORMAP_JET)
    cv2.imshow('Color Depth', color_depth)
    cv2.imshow('Gray Blur', gray_blur)
    cv2.imshow('Gray Rescaled', gray_rescaled_show)

    # 向下位机发送数据
    for unitRow in range(screenHeight):
        unitColIter = (range(screenWidth) if ((unitRow + screenHeight) % 2 == 0) else range(screenWidth - 1, -1, -1))
        # （偶数行 且 屏幕高度偶数）或（奇数行 且 屏幕高度奇数） 正向遍历
        # （奇数行 且 屏幕高度偶数）或（偶数行 且 屏幕高度奇数） 逆向遍历
        for unitCol in unitColIter:
            displayUnit(unitRow, unitCol, gray_thresh)
        

    # 向下位机发送同步信号
    sendCmd(2)

    if cv2.waitKey(1) == ord('q'):
        break

cv2.destroyAllWindows()