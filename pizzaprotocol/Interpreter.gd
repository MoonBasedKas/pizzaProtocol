extends Node

## Player object
var player = null

## Start point of where to execute from
var startPoint = []
## Each function that is callable.
var functions = {}
## Global variables probably won't be supported.
var variables = {}

## Begins program execution.
func execute():
	var instructions = startPoint
	var vars = {}
	var temp = null
	for ins in instructions:
		print(ins.name)
	return 
	for ins in instructions:
		# Function calls without variables, variables will handle it differently.
		if ins.instructionType == "FunctionCall":
			temp = self.functions.get(ins.Name ,null)
			if temp != null:
				execFunction(self.functions[ins.Name])
			else:
				raiseError()
		else:
			ins.exec(self, vars) 
	
	
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
	
func setPlayer(player):
	player = player
	
func getPlayer():
	return player
