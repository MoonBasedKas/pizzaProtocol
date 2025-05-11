extends instruction

class_name IfBlock

var ifFalse = 0
var condition = []


## Moves the player forward a specified amount.
func exec(inter: Interpreter, vars):
	if evalCond():
		return 0
		
	return ifFalse
	
## evalutes if the condition is true
func evalCond():
	if condition == []:
		return true
	
	var l = condition[0].exec()
	var r = condition[-1].exec()
	
#	For now the prototype this works but the a final implementation would
#	Need this changed.
	if l == r:
		return true

	return false

	
func setCond(cond):
	condition = cond
	
func setJump(i):
	ifFalse = i

## Turns it into a nice executable form albiet this should be taken care of.
func buildInstruction(instructions):
	
	return 0
