import spidev
import time

# delay used in animations
DELAY_TIME_MS   = 0.05

# SPI Bus settings
SPI_DEVICE      = 0         # 0 or 1 to select SPI bus
SPI_CHANNEL     = 0         # which chip enable attached to this bus is used
SPI_MODE        = 0x00      # TODO: confirm/test spi mode, should be MSB first, active low CS, data latched on rising edge of clock
SPI_SPEED_HZ    = 3000000   # TODO: confirm/test spi speed

MAX_REG_NOP             = 0x00
MAX_REG_DIG0            = 0x01
MAX_REG_DECODE_MODE     = 0x09
MAX_REG_INTENSITY       = 0x0A
MAX_REG_SCAN_LIMIT      = 0x0B
MAX_REG_SHUTDOWN        = 0x0C
MAX_REG_DISPLAY_TEST    = 0x0F

NUM_MAX_DEVICES = 2

spi = spidev.SpiDev()
spi.open(SPI_DEVICE, SPI_CHANNEL)

def spiTransfer(to_send):
    spi.xfer(to_send)

def initialize():
    """ initial configuration of the MAX7221 chip. """

    # set decode mode to matrix addressing (no seven segment font decoding)
    to_send = [MAX_REG_DECODE_MODE, 0x00] * NUM_MAX_DEVICES
    spiTransfer(to_send)

    # set maximum display intensity
    to_send = [MAX_REG_INTENSITY, 0x08] * NUM_MAX_DEVICES
    spiTransfer(to_send)

    # set scan limit to enable all digits
    to_send = [MAX_REG_SCAN_LIMIT, 0x0F] * NUM_MAX_DEVICES
    spiTransfer(to_send)

    # exit sleep mode
    to_send = [MAX_REG_SHUTDOWN, 0x01] * NUM_MAX_DEVICES
    spiTransfer(to_send)

def setAll(bits):
    """ refresh the entire display on all connected chips. not as efficient as updating single Digits! """
    for device in range(NUM_MAX_DEVICES):
        for digit in range(8):
            setDigit(device, digit, digitFromBits(device, digit, bits))

def setDigit(device, digit, word):
    """ set a single digit of 8 LED segments to the given binary word """

    # address, data
    to_send = [digit + MAX_REG_DIG0, word]
    
    # pad with no-op address/data pairs to shift through all previous devices before latching.
    for i in range(device):
        to_send += [MAX_REG_NOP, 0x00]

    # transfer the prepared sequence of words
    spiTransfer(to_send)

def digitFromBits(device, digit, bits):
    """ Get a binary 8-bit word by extracting the 8 booleans from the array of all LED statuses """
    start = device * 64 + digit * 8
    data = 0
    
    for i in range(8):
        data = data << 1
        if bits[start + i]:
            data = data | 1

    return data

def setIntensity(level):
    spiTransfer([MAX_REG_INTENSITY, level] * NUM_MAX_DEVICES)

def delay():
    time.sleep(DELAY_TIME_MS);

def main():
    initialize()

    # flash entire display a number of times
    print "flashing:",
    for i in range(10):
        print "off",
        setAll([0]*128)
        delay()
        print "on",
        setAll([1]*128)
        delay()
    print "\n"
    delay()

    # cycle through all intensity settings once up to the maximum
    print "intensity:",
    for i in range(16):
        print i,
        setIntensity(i)
        delay()
    print "\n"
        
    delay()

    # iterate through all LEDs, turning on one at a time
    print "one at a time:",
    for i in range(128):
        print i, 
        bits = [0]*128
        bits[i] = 1
        setAll(bits)
        delay()
    print "\n"


    delay()

    # successively turn on all LEDs
    print "fill up:",
    bits = [0]*128
    for i in range(128):
        print i, 
        bits[i] = 1
        setAll(bits)
        delay()
    print "\n"


if __name__ == "__main__":
    main()
