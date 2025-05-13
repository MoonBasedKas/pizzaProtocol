extends Area2D

var victory = false
var road = "No Name"

func setVictory(v):
	victory = v
	
func setRoad(s):
	road = s
	
func _process(delta):
	
	var touch = get_overlapping_areas()
	print(self.name)
	for i in touch:
		
		if i.has_method("isPlayer"):
			if victory:
				print("win")
		
