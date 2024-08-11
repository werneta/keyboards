#!/bin/sh

for n in `seq 10 -1 1`; do
    echo -n "\rProgramming in $n  "
    sleep 1
done

echo "\r                        "
echo "Programming"
dfu-programmer atmega32u2 erase
dfu-programmer atmega32u2 flash "$1"
dfu-programmer atmega32u2 start
echo "Done"
