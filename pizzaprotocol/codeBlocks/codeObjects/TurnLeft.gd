extends Node

## Turns the player left a specified amount.
func exec(inter: Interpreter, vars):
	inter.player.left()
