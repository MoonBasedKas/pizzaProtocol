extends instruction

class_name senseRight


## Moves the player forward a specified amount.
func exec(inter: Interpreter, vars) -> String:
	return Interpreter.getPlayer().lookRight()

## Turns it into a nice executable form albiet this should be taken care of.
func buildInstruction(instructions):
	
	return 0
	
