extends Area2D

var victory = false
var road = "No Name"

func setVictory(v):
	victory = v
	
func setRoad(s):
	var st = str(self.name)
	st = st[0] + "Street"
	var temp = null
	temp = self.get_parent()
	temp = temp.get_children()
	for i in temp:
		if st == i.name:
			i.setName(s)
			print(i)
			break
	
func _process(delta):
	
	var touch = get_overlapping_areas()

	for i in touch:
		
		if i.has_method("isPlayer"):
			if victory:
				ProgramData.stopExec()
				Interpreter.run = false
				Interpreter.clearFuncs()
				get_tree().change_scene_to_file("res://dialogue/level_intros/level3_intro.tscn")
			else:
				print("lose")
		
