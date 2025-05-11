extends instruction

class_name EndIf

var ifFalse = 0
var condition = []


## Moves the player forward a specified amount.
func exec(inter: Interpreter, vars):
	return 0
	

	
func setCond(cond):
	condition = cond
	
func setJump(i):
	ifFalse = i

## Turns it into a nice executable form albiet this should be taken care of.
func buildInstruction(instructions):
	
	return 0
