#!/bin/bash

root_path=/dev/bus/usb
model_str="ErgoDox"
#ls $root_path
for port in `ls $root_path`; do
    port_path="$root_path/$port"
    for dev in `ls $port_path`; do
        dev_path="$port_path/$dev"
        result=`udevadm info $dev_path | ag -i $model_str`
        if [ $? -eq 0 ]; then
            echo "Found an ErgoDox device at: $dev_path"
        fi
    done
done
