
ln -fF config/platformio.ini Marlin/
ln -fF config/_Bootscreen.h Marlin/Marlin/
ln -fF config/_Statusscreen.h Marlin/Marlin/
ln -fF config/Configuration_adv.h Marlin/Marlin/
ln -fF config/Configuration.h Marlin/Marlin/
ln -fFs config/examples/ Marlin/config/

rm -f marlin/config/examples
mkdir -p Marlin/config/examples/Creality/Ender-3\ Pro/CrealityV427
cp -R Configurations/config/examples/Creality/Ender-3\ Pro/CrealityV427/ Marlin/config/examples/Creality/Ender-3\ Pro/CrealityV427