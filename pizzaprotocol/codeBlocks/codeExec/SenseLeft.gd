extends instruction

class_name senseLeft


## Moves the player forward a specified amount.
func exec(inter: Interpreter, vars) -> String:
	pointer = Interpreter.getPlayer()
	if pointer != null:
		return pointer.lookLeft()
	return ""

## Turns it into a nice executable form albiet this should be taken care of.
func buildInstruction(instructions):
	
	return 0
	
