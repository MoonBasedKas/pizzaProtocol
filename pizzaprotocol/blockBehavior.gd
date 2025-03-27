extends CharacterBody2D
var speed = 20

var top = null
var bottom = null
var left = null
var right = null

# Gets the sprite object and if it was clicked move it.
func _physics_process(delta):
	getConnections() # There is definitely a better way
	var body = get_node("ClickableArea")
	if (body.isClicked()):
		# Basically a magical version of slide and move just obectively better.
		global_position = lerp(global_position, get_global_mouse_position(), speed * delta)
	if get_node("OverlapPrevention").getOverlapping():
		velocity = Vector2(0,1)
		move_and_slide()
		
# Gets the connections and their parents if there is a connection
func getConnections():
	var temp = null
	temp = get_node("top")
	top = temp.getConnection()
	if top != null:
		top = top.getParent()
	temp = get_node("bottom")
	bottom = temp.getConnection()
	if bottom != null:
		bottom = bottom.getParent()
	temp = get_node("left")
	left = temp.getConnection()
	if left != null:
		left = left.getParent()
	temp = get_node("right")
	right = temp.getConnection()
	if right != null:
		right = right.getParent()
	return 0
