extends Node2D

func _process(delta):
	if Global.victoria == 9:
		get_tree().change_scene("res://Escenas/Juego2/Juego2.tscn")
