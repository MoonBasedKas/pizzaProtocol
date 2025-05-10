extends instruction

class_name turnRight


## Turns the player right a specified amount.
func exec(inter: Interpreter, vars):
	inter.player.right()
	return null
