extends CollisionShape2D

var colliding = null



func _on_Area2D_body_entered(body):
	colliding = body
	pass
	
func _on_Area2D_body_exited(body):
	colliding = null
	
func getOverlapping():
	
	return colliding
