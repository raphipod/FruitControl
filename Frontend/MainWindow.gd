extends Control

var device_name_output = []
var device_cpuarch_output = []
var device_osver_output = []

var device_available_output = []

var device_name = OS.execute("idevicename", [], true, device_name_output)
var device_cpuarch = OS.execute("ideviceinfo", ["|", "awk", "'{print $2}'"], true, device_cpuarch_output)
# var device_osver = OS.execute("ideviceinfo", ["|", "awk", "'{print $2}'"], true, device_osver_output)

func _on_Search_Button_pressed():
	
	var device_available = OS.execute("idevicename", [], true, device_available_output)
	
	if device_available_output == null && "[]":
		print("[DEBUG] iCC: No device found or libimobiledevice not available!")
	elif device_available_output == '[*]':
		print("[DEBUG] iCC: Device found!")

func _ready():
	# Debug output
	print("\n+++ [DEBUG] - iCC +++\n")
	print("Device name: " , device_name_output)
	print("Device CPU Arch: " , device_cpuarch_output)
	# print("Device OS Ver: " , device_osver_output)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
