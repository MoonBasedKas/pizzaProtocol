extends Area2D

var connection = null

func _process(delta):
	var touch = get_overlapping_areas()
	if touch != []:
		connection = touch[0]
	else:
		connection = null

func getConnection():
	return connection
	
func getParent():
	return get_parent()
