extends Node2D

func _process(delta):
	$Tiempo.text = String(Global.minutos)+" : " +String(Global.t)
	if Global.t == 60:
		Global.minutos = Global.minutos +1
		Global.t = 0
	if Global.victoria == 9:
		get_tree().change_scene("res://Escenas/Juego2/Juego2.tscn")


func _on_Timer_timeout():
	Global.t = Global.t  + 1
	

