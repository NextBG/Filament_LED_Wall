from filawall_realsense import FilaWall

def main():
    wall = FilaWall()
    wall.init_slave()
    wall.init_realsense()
    wall.start_running()

if __name__ == '__main__':
    main()