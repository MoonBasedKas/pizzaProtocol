extends CharacterBody2D
var speed = 50
# Gets the sprite object and if it was clicked move it.
func _physics_process(delta):
	var sprite = get_node("blockSprite")
	if (sprite.isClicked()):
		# Basically a magical version of slide and move just obectively better.
		global_position = lerp(global_position, get_global_mouse_position(), speed * delta)
