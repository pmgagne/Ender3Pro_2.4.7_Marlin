# Ender3Pro_2.4.7_Marlin
My configuration used to compile Marlin firmware for my Creality Ender-3 Pro, with 2.4.7 controler board.

## The version:
This is the Marlin 2.1.2.1 version, using UBL bed leveling.

## The machine:
- Creality Ender 3 Pro, with Creality 4.2.7 board.
- BL Touch connected on the board dedicated port (Not on the Z-limit switch).

I compile it using platform io with the STM32F103RE_creality 256K flavor.

## How to compile:
Just drop the four files in config (_Bootscreen.h, _Statusscreen.h, Configuration_adv.h and Configuration.h) into Marlin folder.
