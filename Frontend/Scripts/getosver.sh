#!/bin/bash

ideviceinfo | grep 'ProductVersion' | awk '{print $2}'