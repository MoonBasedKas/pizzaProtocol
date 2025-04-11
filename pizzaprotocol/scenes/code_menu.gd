extends Node2D

class_name codeMenu

var blocks = []
var funcs = []
var start = null


func _ready():
	
	return 0
	
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("pause"):
#		BEGIN THE GAUNTLET! WILL SWAP SCENES!
		pass
