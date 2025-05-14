extends instruction

class_name move


## Moves the player forward a specified amount.
func exec(inter: Interpreter, vars):
	pointer = Interpreter.getPlayer()
	if pointer != null:
		Interpreter.getPlayer().move()
	return 0

## Turns it into a nice executable form albiet this should be taken care of.
func buildInstruction(instructions):
	
	return 0
	
