extends instruction

class_name pizzaString

var value = ""

## Moves the player forward a specified amount.
func exec(inter: Interpreter, vars) -> String:
	return value

## Turns it into a nice executable form albiet this should be taken care of.
## Questionable at best.
func buildInstruction(instructions):
	
	return 0
	
func setValue(val):
	value = val
	return 
	
