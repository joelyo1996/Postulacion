extends Node2D

func _on_Timer_timeout():
	Global.t = Global.t  + 1
	
func _process(delta):
	if Global.t == 60:
		Global.minutos = Global.minutos +1
		Global.t = 0
	$Tiempo.text = String(Global.minutos)+" : " +String(Global.t)
	if Global.victoria == 18:
		get_tree().change_scene("res://Escenas/Final/Final.tscn")

