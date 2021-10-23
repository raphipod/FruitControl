############################################
# File: MainWindow.gd					   #
#										   #
# This file combines backend and frontend. #
############################################

extends Control

var device_name_output = []
var device_cpuarch_output = []
var device_osver_output = []

var device_name = OS.execute("idevicename", [], true, device_name_output)
var device_cpuarch = OS.execute("ideviceinfo", ["|", "awk", "'{print $2}'"], true, device_cpuarch_output)
# var device_osver = OS.execute("ideviceinfo", ["|", "awk", "'{print $2}'"], true, device_osver_output)

func _ready():
	# Debug output
	print("+++ BACKENDDBG +++")
	print("Device name: " , device_name_output)
	print("Device CPU Arch: " , device_cpuarch_output)
	# print("Device OS Ver: " , device_osver_output)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
