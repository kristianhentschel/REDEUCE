import smbus
import RPi.GPIO as GPIO
import time

i2c_base_address = 0x20 # I2C address of first IO expander
i2c_bus = 0
i2c_enable_pins = [5, 6]

# TODO generate list of devices as (pin, address) pairs

# MCP 23017 register map
MCP_REG_IODIRA      = 0x00
MCP_REG_IODIRB      = 0x01
MCP_REG_IPOLA       = 0x02
MCP_REG_IPOLB       = 0x03
MCP_REG_GPINTENA    = 0x04
MCP_REG_GPINTENB    = 0x05
MCP_REG_DEFVALA     = 0x06
MCP_REG_DEFVALB     = 0x07
MCP_REG_INTCONA     = 0x08
MCP_REG_INTCONB     = 0x09
MCP_REG_IOCON_1     = 0x0a
MCP_REG_IOCON_2     = 0x0b
MCP_REG_GPPUA       = 0x0c
MCP_REG_GPPUB       = 0x0d
MCP_REG_INTFA       = 0x0e
MCP_REG_INTFB       = 0x0f
MCP_REG_INTCAPA     = 0x10
MCP_REG_INTCAPB     = 0x11
MCP_REG_GPIOA       = 0x12
MCP_REG_GPIOB       = 0x13
MCP_REG_OLATA       = 0x14
MCP_REG_OLATB       = 0x15

i2c = None

def main():
    global i2c
    i2c = open_i2c()
    for pin in i2c_enable_pins:
        mcp_initialize(pin, i2c_base_address)

    try:
        while True:
            data = read_all_ports()
            for byte in data:
                print "%x" % byte,
            print "\n"
            time.sleep(0.5)
    except Exception as e:
        print e
        GPIO.cleanup()

def open_i2c():
    GPIO.setmode(GPIO.BCM)
    for pin in i2c_enable_pins:
        GPIO.setup(pin, GPIO.OUT)
        GPIO.output(pin, GPIO.LOW)

    return smbus.SMBus(i2c_bus)

def i2c_write_byte_data(i2c, enable_pin, address, register, data):
    print "%d %x %x %x" % (enable_pin, address, register, data)
    i2c_select_group(enable_pin)
    i2c.write_byte_data(address, register, data)

def i2c_read_word(i2c, enable_pin, address, register):
    i2c_select_group(enable_pin)
    return i2c.read_byte_data(address, register)

def i2c_select_group(enable_pin):
    for pin in i2c_enable_pins:
        if pin == enable_pin:
            GPIO.output(pin, GPIO.HIGH)
        else:
            GPIO.output(pin, GPIO.LOW)

def read_all_ports():
    data = []
    for pin in i2c_enable_pins:
        for i in range(1): # TODO hardcoded number of devices per enable pin
            address = i2c_base_address + i
            data += [i2c_read_word(i2c, pin, address, MCP_REG_GPIOA)]
            data += [i2c_read_word(i2c, pin, address, MCP_REG_GPIOB)]
    return data

def mcp_initialize(pin, address):
    i2c_write_byte_data(i2c, pin, address, MCP_REG_IODIRA, 0xFF)
    i2c_write_byte_data(i2c, pin, address, MCP_REG_IODIRB, 0xFF)
    i2c_write_byte_data(i2c, pin, address, MCP_REG_GPPUA, 0xFF)
    i2c_write_byte_data(i2c, pin, address, MCP_REG_GPPUB, 0xFF)

if __name__ == "__main__":
    main()
