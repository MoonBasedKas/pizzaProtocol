extends Node2D

var exec = false

func _ready():
	pass
	
func _physics_process(delta):
	var temp = get_node("CodeEditor")
	if temp.readyToPause:
		temp.visible = false
		temp = get_node("LevelContainer")
		temp.visible = true
		Interpreter.run = true
	if Input.is_action_just_pressed("reset"):
		temp = get_node("CodeEditor")
		Interpreter.run = false
		ProgramData.exec = false
		temp.visible = true
		temp = get_node("LevelContainer")
		temp.visible = false
	return 
