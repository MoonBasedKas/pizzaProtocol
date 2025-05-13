extends CharacterBody2D

var unitV = Vector2(0,-1)
var speed = 160
var rot = 0
var exec = true
var sensorFront = null
var sensorLeft = null
var sensorRight = null
var body = null
var originalPosition = Vector2(0,0)
var originalRot = 0.0

func _ready():
	originalPosition = self.global_position
	originalRot = self.global_rotation
	body = get_node("Hit")
	sensorFront = get_node("SenseFront")
	sensorLeft = get_node("SenseLeft")
	sensorRight = get_node("SenseRight")
	
## Debug process for car movement
func _physics_process(delta):
	pass
	#if not exec:
		#pass
	#if Input.is_action_just_pressed("scroll_Up"):
		#move()
	#elif Input.is_action_just_pressed("scroll_Right"):
		#right()
	#elif Input.is_action_just_pressed("scroll_Left"):
		#left()
		

## moves the player forward
func move():
	velocity = Vector2(speed,speed) * unitV
	global_position += velocity

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
	
## Senses the road to the right.
func lookFront():
	var sen = sensorFront.sense()
	var tileOn = body.sense()
	if sen == tileOn:
		return "" # Avoids sensing tiles the player is already on
	return sen

## Senses the road to the left
func lookLeft():
	var sen = sensorLeft.sense()
	var tileOn = body.sense()
	if sen == tileOn:
		return ""
	return sen
	
## Senses the road to the right
func lookRight():
	var sen = sensorRight.sense()
	var tileOn = body.sense()
	if sen == tileOn:
		return ""
	return sen
	
func reset():
	global_position = originalPosition
	global_rotation = originalRot
