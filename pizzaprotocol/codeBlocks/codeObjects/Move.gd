extends Node

## Moves the player forward a specified amount.
func exec(inter: Interpreter, vars):
	inter.player.move()
