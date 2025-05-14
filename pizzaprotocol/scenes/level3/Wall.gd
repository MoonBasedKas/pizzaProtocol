extends Area2D

var sName = "Wall"

func setName(n):
	sName = n

func read():
	return sName


func _process(delta):
	
	var touch = get_overlapping_areas()

	for i in touch:
		
		if i.has_method("isPlayer"):
			#print("game over")
			get_tree().change_scene_to_file("res://dialogue/level_intros/hit_wall.tscn")
