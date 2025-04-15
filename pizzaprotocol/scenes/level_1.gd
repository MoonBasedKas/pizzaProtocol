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
	return 
