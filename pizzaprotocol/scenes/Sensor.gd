extends Area2D

class_name  sensor

## Senses if something is in front of the player
func sense():
	var t = get_overlapping_areas()
	if t == []:
		return ""
	for box in t:
		if box.has_method("read"):
			return box.read()
			
	return ""
