extends Label

func _ready():
	text = "Tardaste  "+String(Global.minutos)+" : " +String(Global.t) + "  Gracias por Jugar"


func _on_BotonMenu_pressed():
	get_tree().change_scene("res://Escenas/Menu/Menu.tscn")
