import serial

def main():
    s = serial.Serial(SERIAL_PORT, SERIAL_BAUDRATE)

    s.write("Hello, World!\n\n\n")

if __name__ == "__main__":
    main()
