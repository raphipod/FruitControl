#!/bin/bash

idevicediagnostics ioregentry AppleSmartBattery | grep -A 1 'CurrentCapacity' | grep '<integer>' | sed -n 2p | grep -o '[[:digit:]]*'