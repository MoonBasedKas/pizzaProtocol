extends Node2D

var exec = false

var nodes = []

func _ready():
	pass
	
func _physics_process(delta):
	var temp = get_node("CodeEditor")
	#if Input.is_action_just_pressed("reset") and temp != null:
		#temp.pause()
		#temp = get_node("CodeEditor")
		#Interpreter.run = false
		#ProgramData.stopExec()
		#temp.visible = true
		#temp = get_node("LevelContainer")
		#temp.visible = false
		
	if temp.readyToPause:
		temp.visible = false
		temp = get_node("LevelContainer")
		temp.visible = true
		Interpreter.run = true
		
	if Input.is_action_just_pressed("reset"):
		temp = get_node("LevelView")
		if temp.visible:
			temp.visible = false
		else:
			temp.visible = true

	return 
