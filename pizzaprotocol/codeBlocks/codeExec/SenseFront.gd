extends instruction

class_name senseFront


## Moves the player forward a specified amount.
func exec(inter: Interpreter, vars) -> String:
	pointer = Interpreter.getPlayer()
	if pointer != null:
		return pointer.lookFront()
	return ""

## Turns it into a nice executable form albiet this should be taken care of.
## Questionable at best.
func buildInstruction(instructions):
	
	return 0
	
