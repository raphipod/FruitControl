#!/bin/bash

idevicediagnostics ioregentry AppleSmartBattery | grep -A 1 'CurrentCapacity'