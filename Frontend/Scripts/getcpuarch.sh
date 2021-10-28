#!/bin/bash

ideviceinfo | awk '{print $2}' | awk 'NR==18 {print}'