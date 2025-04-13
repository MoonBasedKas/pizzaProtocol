extends Node2D



func _physics_process(delta):
	
	if Input.is_action_pressed("codeScrollUp"):
		print("Oh we moving")
		self.global_position += Vector2(0,10)
	elif Input.is_action_pressed("codeScrollDown"):
		self.global_position += Vector2(0,-10)
