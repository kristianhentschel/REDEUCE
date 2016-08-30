# Demos

These simple stand-alone programs illustrate how to interface with the hardware components directly at a low level.

## Lamps

The LEDs are wired to two daisy-chained MAX7221 controllers connected to the SPI bus. The example program flashes all LEDs, cycles through the display brightness stages, and then turns on each individual LED in sequence.

LEDs are addressed in sequence with an ID of 0 - 127 for 128 addressable LEDs. They are wired in groups of eight: Eight 'digits' per device, eight 'segment' LEDs per digit. Not all Digits and segments are used in the front panel, but this program will test all anyway.

The address sequence starts with Device 0, Digit 0, Segment 0, and counts up to Device 1, Digit 7, Segment 7, for an LED adddress range of 0 - 127.

## Switches

The switches are connected to 12 MCP23017 GPIO expanders connected to the I2C bus. The example program configures the expanders and repeatedly prints out the state of all 192 inputs, not all of which are connected.

Each expander has the lower 3 address bits set via jumper connections on the corresponding board. As this only makes for 8 unique addresses, clock gating is used to switch between the first set of 8 devices, and the second set of 4 devices. One of the two clock-enable GPIO pins must be written high, the other low, before commencing an I2C transfer.

Switches that are not simply On-Off (but On-Off-On, ie the neutral position is distinguished from the up and down positions) use two inputs. The example program does not care about this and simply prints out the state of individual input pins in sequence.

The pin addressing scheme starts with device 0 on the first group, channel A, pin 0, goes up to device 7 on the first group, channel B, pin 7, and then continues with the second group, up to device 3, channel B, pin 7, for an input pin address range of 0 - 191.

## Screen

The screen is a 1200x600 pixel HDMI screen. Special configuration of the system may be necessary to set this resolution. The example program will open a fullscreen window and draw something to it.

## Printer

The printer is connected to the Pi serial port. The program will test communication with the printer and print out a line of text and draw a small bit map.
