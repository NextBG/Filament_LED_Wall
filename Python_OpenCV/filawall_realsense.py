import cv2
import serial
import time
import pyrealsense2 as rs
import numpy as np
# import matplotlib.pyplot as plt

class FilaWall:
    # Display Configuration
    screenWidth = 3
    screenHeight = 3
    pixelWidth = screenWidth * 4
    pixelHeight = screenHeight * 4
    pipeline = None
    ser = None
    fps = 10
    yesterdayVideo = cv2.VideoCapture('xxx.avi') # TODO: file names
    todayVideo = cv2.VideoWriter('xxxx.avi', cv2.VideoWriter_fourcc(), fps, (pixelWidth, pixelHeight))

    def init_slave(self):
        # Open Serial port
        availables = ['---:Select one below:---']
        for device in serial.tools.list_ports.comports():
            availables.append(device.device)
        id = 0
        for port in availables:
            print(id, port)
            id += 1
        target_port = int(input('\nChoose device for FilaWall > '))
        if target_port < 1 or target_port >= len(availables):
            print('Fatal: invalid port.')
            exit(-1)
        self.ser = serial.Serial(target_port, 115200, timeout=0.5)
        time.sleep(2)
        print("Serial port {} opened".format(target_port))

    # Send Command Method
    def _sendCmd(self, cmd):
        self.ser.write((str(cmd) + '\n').encode())

    def init_realsense(self):
        # Realsense D415i setting
        self.pipeline = rs.pipeline()
        config = rs.config()
        # 640x480, 10fps
        config.enable_stream(rs.stream.depth, 640, 480, rs.format.z16, self.fps)
        self.pipeline.start(config)

    # 向下位机输出16个像素
    def _displayUnit(self, unitRow, unitCol, image):
        for row in range(unitRow * 4 + 4 - 1, unitRow * 4 - 1, -1):
            for col in range(unitCol * 4 + 4 - 1, unitCol * 4 - 1, -1):
                self._sendCmd(int(not image[row][col] > 0))

    def start_running(self):
        while True:
            frames = self.pipeline.wait_for_frames()
            depth_rs = frames.get_depth_frame()
            depth = np.asanyarray(depth_rs.get_data())              # 格式转换
            dimg_gray = cv2.convertScaleAbs(depth, alpha=255/4000)  # 获取灰度深度图最大4米
            dimg_gray = cv2.flip(dimg_gray, 1)                      # 镜像
            gray_part = dimg_gray[0:480, 80:540]                    # 裁剪成正方形
            gray_blur = cv2.blur(gray_part, (30, 30))               # 缩放，降低分辨率
            gray_rescaled = cv2.resize(gray_blur, (self.pixelWidth, self.pixelHeight))
            ret, gray_thresh = cv2.threshold(gray_rescaled, 100, 255, cv2.THRESH_BINARY_INV)
            self.todayVideo.write(gray_thresh)                      # Save Today's Video
            yret, yframe = self.yesterdayVideo.read()               # Yesterday Once More
            if yret:
                gray_thresh += yframe # Mixed!
                # TODO: Not Tested
            # 电脑端显示
            gray_rescaled_show = cv2.resize(gray_thresh, (480, 480), interpolation=cv2.INTER_AREA)
            color_depth = cv2.applyColorMap(gray_part, cv2.COLORMAP_JET)
            cv2.imshow('Color Depth', color_depth)
            cv2.imshow('Gray Blur', gray_blur)
            cv2.imshow('Gray Rescaled', gray_rescaled_show)
            # 向下位机发送数据
            for unitRow in range(self.screenHeight):
                unitColIter = (range(self.screenWidth) if ((unitRow + self.screenHeight) % 2 == 0) else range(self.screenWidth - 1, -1, -1))
                # （偶数行 且 屏幕高度偶数）或（奇数行 且 屏幕高度奇数） 正向遍历
                # （奇数行 且 屏幕高度偶数）或（偶数行 且 屏幕高度奇数） 逆向遍历
                for unitCol in unitColIter:
                    self._displayUnit(unitRow, unitCol, gray_thresh)
            self._sendCmd(2) # 向下位机发送同步信号
            if cv2.waitKey(1) == ord('q'): break
        cv2.destroyAllWindows()