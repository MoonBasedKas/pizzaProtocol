extends instruction

class_name turnLeft

## Turns the player left a specified amount.
func exec(inter: Interpreter, vars):
	pointer = Interpreter.getPlayer()
	if pointer != null:
		pointer.left()
	return 0
