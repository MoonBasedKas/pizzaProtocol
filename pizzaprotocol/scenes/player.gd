extends CharacterBody2D

var unitV = Vector2(0,-1)
var rot = 0

## Debug process for car movement
func _physics_process(delta):
	var exec = true
	if not exec:
		pass
	elif Input.is_action_just_pressed("scroll_Up"):
		move()
	elif Input.is_action_just_pressed("scroll_Right"):
		right()
	elif Input.is_action_just_pressed("scroll_Left"):
		left()
		

## moves the player forward
func move():
	velocity = Vector2(1000,1000) * unitV
	move_and_slide()

## turns the player object left by 90
func left():
	rotate(deg_to_rad(90))
	rot += 90
	unitV = Vector2(cos(deg_to_rad(rot - 90)),sin(deg_to_rad(rot - 90)))
	pass
	
## Turns the player object right by 90
func right():
	
	rot -= 90
	unitV = Vector2(cos(deg_to_rad(rot - 90)),sin(deg_to_rad(rot - 90)))
	rotate(deg_to_rad(-90))
	pass
