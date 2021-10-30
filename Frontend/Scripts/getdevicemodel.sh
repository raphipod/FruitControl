#!/bin/bash

device_id=`ideviceinfo | grep 'Hardware*Model' | awk '{print $2}'`

if [ device_id = D79AP ] 
then
    echo "iPhone SE 2"
else
    echo "Unknown model"
fi