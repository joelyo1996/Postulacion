extends Sprite

var click = false
var mauseIn = true
var a = true

func _process(delta):
	if click == true:
		if a == true :
			if (mauseIn == true && Input.is_action_pressed("left_click")):
				set_position(get_viewport().get_mouse_position())
	pass

func _on_Area2D_input_event(viewport, event, shape_idx):
	if Input.is_action_pressed("left_click"):
		click = true
	pass
	if Input.is_action_just_released("left_click"):
		click = false
	pass 


func _on_AreaPosicion1_area_entered(area):
	if area.name == "Area2D":
		a = false
		var mauseIn = false
	pass 
