extends Button

var backup_output = []

func _on_MkBackup_Button_pressed():
	OS.execute("bash", ["./Scripts/backup.sh"], true, backup_output)
	
	print(backup_output)
