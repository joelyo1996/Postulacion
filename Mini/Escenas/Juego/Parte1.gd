extends Sprite

var click = false
func _process(delta):
	if click == true:
		set_position(get_viewport().get_mouse_position())
	pass

func _on_Area2D_input_event(viewport, event, shape_idx):
	if Input.is_action_pressed("left_click"):
		click = true
	pass
	if Input.is_action_just_released("left_click"):
		click = false
	pass # Replace with function body.
