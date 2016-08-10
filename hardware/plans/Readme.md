# Re:Deuce Hardware interface plans

## PCB Board design and manufacturing

The `v1`, ... folders contain revisions of all the required boards. I use nested
schematics to organize the circuit into logical blocks. Some nested schematics
(those instantiated in the root schematic, v1.sch) can be opened individually as
a root, and these are then used to make the individual pcbs. Some PCBs will be
made multiple times.

### Design Rules for PCB

Track width 0.4mm, clearance 0.3mm

Hole diameter 1.0mm

Via diameter 1.6mm

### Top Level Schematic (not a board)


### Boards to be produced

All components may be on the front side providing spacers are used for the LEDs.

[] Design finished and included in panel SVG if applicable [] board produced.

#### Main board

* [] [] 1x **pi-connect**: Main board that connects to Raspberry Pi and Power supply
  and houses some of the logic ICs and supplementary components. Has lots of
  spare connection points e.g. for serial printer.
  
#### Lamps

The display drivers for the lamps sit on the main board. Each board has a
ten-wire IDC connector and can support up to 16 LEDs, i.e. two digits (2 digit
cathodes, 8 segment anodes).

* [x] [] 4x **lamps-16**: Made from two `led-row` blocks. Two of these each make the OS
  and ID lamp rows.
* [x] [] 1x **lamps-13-3a**: first 13 IS lamps, and on a separate board (4 wires) 3
  more lamps (TCA TCB TCI).
* [] [] 1x **lamps-4-3b**: 4 + 3 lamps to match up with `keys-6` (4) and the (3) part
  of `keys-3-4`, with the third lamp on it being the go lamp. (Read, Punch,
  Program Display, TIL; Stop, Alarm, Go)

#### Switches

The switch rows each have a controller on the board, connecting to the main
board via 4 wires (I2C SDA, SCL and 3v3 power). They all have configurable
addresses, the three address pins for the controller must be set with jumper
wires for each of them.

* [x] [] 2x **switches-16**: one 16-input IC and 16 on-off only switches (special word
  switches).
* [x] [] 6x **keys-8**: one 16-input IC and eight on-off-on switches (two inputs each).
  4 of these for the ID keys, two for the IS keys
* [] [] 1x **keys-3-3**: 3 horizontally aligned and 3 vertically aligned switches on
  two separate boards, with a wire interface between them. horizontally:
  Release, Stop, Alarm. vertically: clear OS, clear ID, SW.
* [] [] 1x **keys-6**: NIS, Source, Dest, Discrimination, TT, TCI
* [] [] 1x **keys-9**: Read, Single Read, Punch, Program Display, TIL, Initial
  Input, Clear Store, EXT Tree, Single shot. two of these must be single input:
  Single read and Initial Input?
  
#### Monitor

* [x] [] 1x **delay-line-select**: one input IC and a 16-position dial and a push button.


#### One-shot-dial

The one-shot dial will be connected directly to the main board.

### Smaller building blocks

* **led-row** is a logical block of 8 5mm LEDs.

## Wiring and Assembly

I think we can get a bunch of IDC ribbon cables, connectors, and through hole plugs.

* 6x 10-way (2x5) for 16 LEDs per connection (8 segments and 2 digits):
  * 4x: one per `lamps-16` board. 8 segments and 2 digits per ribbon cable.
  * 1x: `lamps-13` which will have 4 soldered wires going to `lamps-3-a`.
  * 1x: somehow covering `lamps-1`, `lamps-3-b`, `lamps-3-c`
* 12x 4-way (2x2) for switches - one per IC. (VDD, VSS, SDA, SCL) 
  * 4x: ID Keys
  * 2x: SW Switches
  * 1x: top left switch row
  * 2x: IS (`keys-8`, `keys-5`)
  * 1x: delay line select and mc slip
  * one or two more for remaining 12 switches.

## Front plate

The front plate can be laser cut from 4mm plywood, or metal. It should fit the
standard sheet size of 600x300mm.

Note that our LED's are oval, but should fit in 5mm holes in the plywood still.
A DXF or SVG cutting file will be provided.
