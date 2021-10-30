#!/bin/bash

ideviceinfo | grep 'CPUArchitecture' | awk '{print $2}'