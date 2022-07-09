extends Label

func _ready():
	text = "Tardaste  "+String(Global.minutos)+" : " +String(Global.t) + "  Gracias por Jugar"


func _on_BotonMenu_pressed():
	Global.victoria = 0
	if Global.t < Global.segundosrecord:
		Global.segundosrecord = Global.t
	get_tree().change_scene("res://Escenas/Menu/Menu.tscn")
	
