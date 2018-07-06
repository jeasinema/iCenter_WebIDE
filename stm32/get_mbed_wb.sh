# !/bin/bash
# $FileName: get_mbed_wb.sh
# $Date: 07-07-2018
# $Author: Jeasine Ma [jeasinema[at]gmail[dot]com]

echo check for mbed-cli...
command -v mbed 1>/dev/null 2>&1 || pip2 install mbed-cli 

echo setup mbed stm32f1 template... 
mbed import mbed-os-example-blinky
mv mbed-os-example-blinky mbed-stm32f1 
cd mbed-stm32f1 
mbed target NUCLEO_F103RB 
mbed toolchain ARM_GCC 
mkdir src inc 
mv main.cpp src/.
mbed export -i GCC_ARM 
echo test build...
make -j
make clean
cp -R ../c9 .c9
cd ..

echo setup mbed stm32f4 template... 
mbed import mbed-os-example-blinky
mv mbed-os-example-blinky mbed-stm32f4
cd mbed-stm32f4 
mbed target NUCLEO_F429ZI
mbed toolchain ARM_GCC 
mkdir src inc 
mv main.cpp src/.
mbed export -i GCC_ARM 
echo test build...
make -j
make clean
cp -R ../c9 .c9
cd ..

echo done.
