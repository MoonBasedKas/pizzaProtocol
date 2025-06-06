extends Node

## Player object
var player = null

var speed = 0.2
var run = false
## Start point of where to execute from
var startPoint = []
## Each function that is callable.
var functions = {}
## Global variables probably won't be supported.
var variables = {}

func clearFuncs():
	startPoint = []

## Begins program execution.
func execute():

	var instructions = startPoint
	var vars = {}
	var length = len(instructions)
	var i = 0
#	We must abandon the totaly based for loop.
	while i < length:
		if not run:
			break
		await get_tree().create_timer(speed).timeout
		if run:
			i += instructions[i].exec(self, vars)
		i += 1



## Begins execution of a specfic function.
func execFunction(_function):
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
