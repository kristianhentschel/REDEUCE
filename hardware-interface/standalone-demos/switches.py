import smbus
import RPi.GPIO as GPIO

i2c_base_address = 0x00 # TODO I2C address of first IO expander
i2c_bus = 0
i2c_enable_pins = [5, 6]

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

i2c = open_i2c()

def main():

def open_i2c():
    GPIO.setMode(GPIO.BCM)
    for pin in i2c_enable_pins:
        GPIO.setup(pin, GPIO.OUT)
        GPIO.output(pin, GPIO.LOW)

    return smbus.SMBus(i2c_bus)

def i2c_write_byte_data(i2c, enable_pin, address, register, data):
    i2c_select_group(enable_pin)
    i2c.write_byte_data(i2c_base_address + address, register, data) 

def i2c_read_word(i2c, enable_pin, address, register):
    i2c_select_group(enable_pin)
    return i2c.read_byte_data(i2c_base_address + address, register)

def i2c_select_group(enable_pin):
    for pin in i2c_enable_ins():
        if pin == enable_pin:
            GPIO.output(pin, GPIO.LOW)
        else:
            GPIO.output(pin, GPIO.HIGH)

def mcp_initialize():
    
    i2c_write_byte_data(i2c, 

if __name__ == "__main__":
    main()
