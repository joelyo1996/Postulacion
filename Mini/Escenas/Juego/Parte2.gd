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

func _on_Area2_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("left_click"):
		click = true



func _on_AreaPosicion2_area_entered(area):
	if area.name == "Area2":
		a = false
		position= Vector2(790,250)
		var mauseIn = false
		Global.victoria = Global.victoria + 1

