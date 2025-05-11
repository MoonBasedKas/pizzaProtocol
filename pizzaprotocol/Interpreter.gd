extends Node

## Player object
var player = null

var speed = 0.5

## Start point of where to execute from
var startPoint = []
## Each function that is callable.
var functions = {}
## Global variables probably won't be supported.
var variables = {}

## Begins program execution.
func execute():
	print(startPoint)
	var instructions = startPoint
	var vars = {}
	var temp = null
	var length = len(instructions)
	var i = 0
#	We must abandon the totaly based for loop.
	while i < length:
		await get_tree().create_timer(speed).timeout
		i += instructions[i].exec(self, vars)
		i += 1
	
	#for ins in instructions:
		#await get_tree().create_timer(speed).timeout
		#ins.exec(self, vars)
		
	
	
	pass


## Begins execution of a specfic function.
func execFunction(function):
	var instructions = startPoint.fetchInstructions()
	var vars = {}
	var ret = null
	for ins in instructions:
		# Every datatype will take in this object and the function variables.
		ins.exec(self, vars) 
		
	return ret
	
## Raises an error
func raiseError():
	return 
	
func addInstruction(ins, funcName):
	if funcName == "start":
		startPoint.append(ins)
	else:
		functions[funcName].append(ins)
		
func createFunction(funcName):
	functions[funcName] = []
	
func printInstructions():
	print(self.startPoint)
	
func setPlayer(progPlayer):
	player = progPlayer
	
func getPlayer():
	return player
