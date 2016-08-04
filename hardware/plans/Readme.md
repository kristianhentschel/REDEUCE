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

LEDs and Switches are always on the *front* side. All other components, but
especially connectors, should be placed on the *back* side.

* 1x **pi-connect**: Main board that connects to Raspberry Pi and Power supply
  and houses some of the logic ICs and supplementary components. Has spare
  connection points e.g. for serial printer.
* 4x **lamps-16**: Made from two `led-row` blocks. Two of these each make the OS
  and ID lamp rows.
* 1x **lamps-13**: first 13 IS lamps. Has a connector for connecting the `lamps-3-a`.
* 1x **lamps-3-a**: three unidentified lamps in a row, to be connected to `lamps-13`
* 2x **switches-16**: one 16-input IC and 16 on-off only switches (special word
  switches).
* 6x **keys-8**: one 16-input IC and eight on-off-on switches (two inputs each).
  4 of these make the ID keys, one is used for the first 8 IS keys, the last one is for the
  top left row of unidentified switches.
* 1x **keys-5**: The remaining five on-off-on switches for the IS row and 

#### Not yet identified

* 1x **lamps-3-b**: three lamps in a row, connected to `lamps-1`
* 1x **lamps-3-c**: three lamps in a row with an empty space, connected to
  `lamps-1`
* 1x **lamps-1**: just one lamp and a connector for eight segments going to the
  main board, and connectors for `lamps-3-b` and `lamps-3-c`.
* *tbd*: remaining switches (grouped as horizontal 3, 4, 2, 1, 1, 1), will depend
  on whether they are on-off or on-off-on.
* *tbd*: monitor delay line select and mc slip button. - 1 input IC for 16 inputs.
* *tbd*: One shot dial. - likely a single input sending a sequence of pulses.

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
