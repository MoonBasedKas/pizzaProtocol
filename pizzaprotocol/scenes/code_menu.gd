extends Node2D

class_name codeMenu

var blocks = []
var funcs = []
var start = null
var loc : String = ""


func _ready():
	
	return 0
	
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("pause"):
#		BEGIN THE GAUNTLET! WILL SWAP SCENES!
		pass
		
	createNodes()
	
func createNodes():
	var temp = ProgramData.dequeue()
	
	if temp == null:
		return 0
	determineNode(temp)
	return 0

func blockAlc(new):
		new = new.instantiate()
		add_child(new) 
		blocks.append(new)
		return new

func determineNode(name):
	var new = null
	if name == "StartBlock" and start == null:
		new = preload("res://codeBlocks/codeFolder/StartBlock.tscn")
		new = blockAlc(new)
		start = new
		
	if name == "MoveBlock":
		new = preload("res://codeBlocks/codeFolder/MoveBlock.tscn")
		new = blockAlc(new)
		start = new

	if name == "TurnLeftBlock":
		new = preload("res://codeBlocks/codeFolder/TurnLeft.tscn")
		new = blockAlc(new)
		start = new
		
	if name == "TurnRightBlock":
		new = preload("res://codeBlocks/codeFolder/TurnRight.tscn")
		new = blockAlc(new)
		start = new
	
