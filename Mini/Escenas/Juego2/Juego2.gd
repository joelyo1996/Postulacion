extends Node2D

func _on_Timer_timeout():
	Global.t = Global.t  + 1
	
func _process(delta):
	$Tiempo.text = String(Global.t)
	if Global.victoria == 9:
		get_tree().change_scene("res://Escenas/Final/Final.tscn")
