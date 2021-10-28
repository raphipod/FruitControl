extends Control

# DEBUG - OUTPUT

var device_name_output = []
var device_cpuarch_output = []
var device_osver_output = []

var device_name = OS.execute("bash", ["./Scripts/getdevicename.sh"], true, device_name_output)
var device_cpuarch = OS.execute("bash", ["./Scripts/getcpuarch.sh"], true, device_cpuarch_output)
var device_osver = OS.execute("bash", ["./Scripts/getosver.sh"], true, device_osver_output)

func _ready():
	# Debug output
	print("\n+++ [DEBUG] - iCC +++\n")
	print("Device Name: " , device_name_output)
	print("Device CPU Arch: " , device_cpuarch_output)
	print("Device OS Ver: ", "iPadOS/iOS ", device_osver_output)
