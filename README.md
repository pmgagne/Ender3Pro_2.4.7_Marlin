# Ender3Pro_2.4.7_Marlin
My configuration used to compile Marlin firmware for my Creality Ender-3 Pro, with 2.4.7 controler board and BLTouch.

## Marlin version
This is the Marlin 2.1.2.1 version, using UBL bed leveling.

## The machine
- Creality Ender 3 Pro, with Creality 4.2.7 board.
- BL Touch connected on the board dedicated port (Not on the Z-limit switch).

I compile it using platform io with the STM32F103RE_creality 256K flavor.

## How to compile
You must copy the config files into the Marlin subrepo. To do this use the prepare.sh script, or drop the four files in config (_Bootscreen.h, _Statusscreen.h, Configuration_adv.h and Configuration.h) into Marlin folder.

See https://marlinfw.org/docs/basics/auto_build_marlin.html for more information on the build process.

## Using UBL leveling
Use the following g-code in Cura to start printing

    ; Ender 3 Custom Start G-code
    G92 E0 ; Reset Extruder
    M104 S{material_standby_temperature} ; Start heating up the nozzle most of the way
    M190 S{material_bed_temperature_layer_0} ; Start heating the bed, wait until target temperature reached
    M109 S{material_print_temperature_layer_0} ; Finish heating the nozzle
    G28 ; Home all axes
    ; UBL - start
    G29 L0 ; Load UBL from slot 0
    G29 J ; Probe 3 points and tilt the mesh to the plane
    ; UBL - end
    G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
    G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position
    G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
    G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
    G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line
    G92 E0 ; Reset Extruder
    G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
    G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish

# Important notice
This is my setup and I share it AS-IS, WITH NO WARRANTIES, EXPRESS, IMPLIED OR OTHERWISE, REGARDING ITS ACCURACY, COMPLETENESS OR PERFORMANCE. 