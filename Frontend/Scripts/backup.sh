#!/bin/bash

if [ -d /home/$USER/FruitControl/Backups ]; then
	echo "Backup directory exists"
	idevicebackup2 backup /home/$USER/FruitControl/Backups
else
	mkdir -p /home/$USER/FruitControl/Backups
fi
