extends Node2D

var t =0

func _process(delta):
	if Global.victoria == 9:
		get_tree().change_scene("res://Escenas/Juego2/Juego2.tscn")


func _on_Timer_timeout():
	t = t + 1
	$Tiempo.text = String(t)

