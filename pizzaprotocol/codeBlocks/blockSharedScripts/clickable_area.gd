extends Area2D

var clicked = false
var inside = false

		
func _mouse_enter():
	inside = true
	
func _mouse_exit():
	inside = false
	


func _physics_process(delta):
	if Input.is_action_just_pressed("click") && inside:
		clicked = true
	elif Input.is_action_just_released("click"):
		clicked = false


func isClicked():
	return clicked
