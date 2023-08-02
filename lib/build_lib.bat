set COMPILER_PATH=%HOMEDRIVE%%HOMEPATH%\.platformio\packages\toolchain-gccarmnoneeabi\bin

move example_lib.c.txt example_lib.c
rem Compile it
"%COMPILER_PATH%\arm-none-eabi-gcc" -c -o example_lib.o -mthumb -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 example_lib.c
rem Archive it
"%COMPILER_PATH%\arm-none-eabi-gcc-ar" rc example_lib.a example_lib.o
rem Generate index
"%COMPILER_PATH%\arm-none-eabi-gcc-ranlib" example_lib.a
rem Cleanup
rm example_lib.o
move example_lib.c example_lib.c.txt
