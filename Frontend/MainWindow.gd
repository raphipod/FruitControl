extends Control

# DEBUG - OUTPUT

export var device_name_output = []
export var device_cpuarch_output = []
export var device_osver_output = []
export var device_model_output = []
export var device_batt_charge_output = []

var device_name = OS.execute("bash", ["./Scripts/getdevicename.sh"], true, device_name_output)
var device_cpuarch = OS.execute("bash", ["./Scripts/getcpuarch.sh"], true, device_cpuarch_output)
var device_osver = OS.execute("bash", ["./Scripts/getosver.sh"], true, device_osver_output)
var device_model = OS.execute("bash", ["./Scripts/getdevicemodel.sh"], true, device_model_output)
var device_batt_charge = OS.execute("bash", ["./Scripts/getbattcharge.sh"], true, device_batt_charge_output)

func _ready():
	# Debug output
	print("\n+++ [DEBUG] - iCC +++\n")
	print("Device Name: " , device_name_output)
	print("Device Model: ", device_model_output)
	print("Device CPU Arch: " , device_cpuarch_output)
	print("Device OS Ver: ", "iPadOS/iOS ", device_osver_output)
	print("Battery Charge: ", device_batt_charge_output, "%" )

# Write Device info to /home/$USER/FruitControl/DEVICE.json

	var json := to_json(_data)
	print(json)
	var dictionary : Dictionary = JSON.parse(json).result
	for key in dictionary:
		print(dictionary[key].name)