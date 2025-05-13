extends Node2D

class_name codeMenu

var blocks = []
var funcs = []
var start = null
var startBlock = false
var compiled = false
var readyToPause = false

func pause():
	readyToPause = false

func _ready():
	
	return 0
	
func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("pause") or ProgramData.getExec():
		if not compiled:
			compileBlocks()
			compiled = true
			readyToPause = true
#		BEGIN THE GAUNTLET! WILL SWAP SCENES!
		#Interpreter.execute()
		pass
	else:
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
	if name == "StartBlock" and not startBlock:
		new = preload("res://codeBlocks/codeFolder/StartBlock.tscn")
		new = blockAlc(new)
		start = new
		startBlock = true
		
	if name == "MoveBlock":
		new = preload("res://codeBlocks/codeFolder/MoveBlock.tscn")
		new = blockAlc(new)


	if name == "TurnLeftBlock":
		new = preload("res://codeBlocks/codeFolder/TurnLeft.tscn")
		new = blockAlc(new)

		
	if name == "TurnRightBlock":
		new = preload("res://codeBlocks/codeFolder/TurnRight.tscn")
		new = blockAlc(new)
	
	if name == "IfBlock":
		new = preload("res://codeBlocks/codeFolder/IfBlock.tscn")
		new = blockAlc(new)
	
	if name == "EndIfBlock":
		new = preload("res://codeBlocks/codeFolder/EndIfBlock.tscn")
		new = blockAlc(new)
		
	if name == "CustomInputBlock":
		new = preload("res://codeBlocks/codeFolder/CustomInputBlock.tscn")
		new = blockAlc(new)
		
	if name == "LookFrontBlock":
		new = preload("res://codeBlocks/codeFolder/LookFront.tscn")
		new = blockAlc(new)
		
	if name == "LookLeftBlock":
		new = preload("res://codeBlocks/codeFolder/LookLeft.tscn")
		new = blockAlc(new)
		
	if name == "LookRightBlock":
		new = preload("res://codeBlocks/codeFolder/LookRight.tscn")
		new = blockAlc(new)
		
	if name == "WhileBlock":
		new = preload("res://codeBlocks/codeFolder/WhileBlock.tscn")
		new = blockAlc(new)
		
	if name == "EndWhileBlock":
		new = preload("res://codeBlocks/codeFolder/EndWhileBlock.tscn")
		new = blockAlc(new)
		
	if name == "EqBlock":
		new = preload("res://codeBlocks/codeFolder/EqualBlock.tscn")
		new = blockAlc(new)
		
	if new != null:
		new.position = get_node("Camera2D").position
		
## Compiles the blocks into something that can be interpreted
func compileBlocks():
	print("Compiling")
	# Skip to next block because start behaves like a global scope.
	getBlocks(start.getBelow(), "start")
	for fun in funcs:
		getBlocks(fun, fun.getName())
	
	compiled = true
	return 0
	
## Gets the blocks that are touching from a function or start block.
func getBlocks(head, name):
	var temp = head
	while head != null:
		Interpreter.addInstruction(head.returnSelf(), name)
		head = head.getBelow()
	return 0
