extends instruction

class_name move


## Moves the player forward a specified amount.
func exec(inter: Interpreter, vars):
	inter.getPlayer().move()
	return 

## Turns it into a nice executable form albiet this should be taken care of.
func buildInstruction(instructions):
	
	return 0
	
