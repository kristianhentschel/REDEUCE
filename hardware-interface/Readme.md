# Deuce Hardware Interface

Feeds the emulator with events from physical switches, displays the status on physical LEDs, draws a graphical representation of the memory contents to the screen, and talks to the serial printer.

Intended for a Raspberry Pi (Raspbian) for use with the `../hardware/v1` printed circuit boards and laser cut front panel.

## Installation and System Requirements

- Enabled SPI and I2C kernel modules
- Disabled serial kernel console (serial port available for user use)
- Current user must have access to SPI, I2C, and Serial devices

```
sudo apt-get install i2cdev spidev virtualenv

virtualenv init venv
source venv/bin/activate

pip install -r requirements.txt
```
