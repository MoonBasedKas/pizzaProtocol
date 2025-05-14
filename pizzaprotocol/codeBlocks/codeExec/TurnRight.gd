extends instruction

class_name turnRight


## Turns the player right a specified amount.
func exec(inter: Interpreter, vars):
	pointer = Interpreter.getPlayer()
	if pointer != null:
		pointer.right()
	return 0
