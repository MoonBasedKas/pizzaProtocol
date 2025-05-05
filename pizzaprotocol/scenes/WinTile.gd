extends Area2D
	
func _process(delta):
	var touch = get_overlapping_areas()
	for i in touch:
		if i.has_method("isPlayer"):
			print("win")
		
