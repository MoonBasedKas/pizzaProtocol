extends Camera2D

var speed = 1000


# Manages camera controls.
func _process(delta):
	if Input.is_action_just_pressed("zoom_In"):
		zoom *= .5
	if Input.is_action_just_pressed("zoom_Out"):
		zoom *= 2
		
	if Input.is_action_just_pressed("speed_Up_Scroll"):
		speed = 10000
	if Input.is_action_just_released("speed_Up_Scroll"):
		speed = 1000
	
	if Input.is_action_pressed("scroll_Up"):
		global_position += Vector2(0, -speed * delta)
	if Input.is_action_pressed("scroll_Down"):
		global_position += Vector2(0, speed * delta)
	if Input.is_action_pressed("scroll_Left"):
		global_position += Vector2(-speed * delta, 0)
	if Input.is_action_pressed("scroll_Right"):
		global_position += Vector2(speed * delta, 0)
