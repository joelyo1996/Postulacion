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

	if Input.is_action_just_released("left_click"):
		click = false
	pass 

func _on_Area6_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("left_click"):
		click = true

func _on_AreaPosicion6_area_entered(area):
	if area.name == "Area6":
		a = false
		position= Vector2(650,320)
		var mauseIn = false
		Global.victoria = Global.victoria + 1
	pass # Replace with function body.
