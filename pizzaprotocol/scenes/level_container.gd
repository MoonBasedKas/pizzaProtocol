extends Node2D

var exec = true

func _physics_process(delta):
	if self.visible:
		Interpreter.setPlayer(get_node("Player"))
		if exec:
			exec = false
			Interpreter.execute()
			
func _ready():
	Interpreter.setPlayer(get_node("Player"))
