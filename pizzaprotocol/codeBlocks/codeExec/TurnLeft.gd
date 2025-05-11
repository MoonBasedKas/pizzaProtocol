extends instruction

class_name turnLeft

## Turns the player left a specified amount.
func exec(inter: Interpreter, vars):
	inter.player.left()
	return 0
