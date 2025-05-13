extends Node2D

var exec = true
var children = []

func _physics_process(delta):
	if self.visible:
		Interpreter.setPlayer(get_node("Player"))
		if exec:
			exec = false
			Interpreter.execute()
			
func _ready():
	var temp = get_children()
	for i in temp:
		if "Win" in i.name:
			children.append(i)
	temp = children.pick_random()
	temp.setVictory(true)
	temp.setRoad("Pizza Street")
	Interpreter.setPlayer(get_node("Player"))
	
