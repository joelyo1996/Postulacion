extends Node2D


func _on_Inicio_pressed():
	get_tree().change_scene("res://Escenas/Juego/Juego.tscn")
	

func _ready():
	$Record.text="Tiempo Record  "+String(Global.minutosrecord )+" : "+ String(Global.segundosrecord)
	
func _on_Salir_pressed():
	get_tree().quit()
