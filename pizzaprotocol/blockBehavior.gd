extends CharacterBody2D

class_name blockBehavior

var speed = 20

var top = null
var bottom = null
var left = null
var right = null
var type = "" ## Will always be all lowercase start uppercase next words.
var allowed = []

var rng = RandomNumberGenerator.new()

# Gets the sprite object and if it was clicked move it.
func _physics_process(delta):
	doPhysics(delta)
	
## When extending a script you'll want to call this. It's a bit of overhead but
## Oh well.
func doPhysics(delta):
	getConnections() # There is definitely a better way
	var body = get_node("ClickableArea")
	if (body.isClicked()):
		# Basically a magical version of slide and move just obectively better.
		global_position = lerp(global_position, get_global_mouse_position(), speed * delta)
	
	var col = move_and_collide(Vector2(0,0))
	if col:
		
		velocity = Vector2( rng.randi_range(-5, 5), rng.randi_range(-5, 5))
		move_and_slide()
	
		
# Gets the connections and their parents if there is a connection
func getConnections():
	var temp = null
	temp = get_node("top")
	if temp != null and temp.has_method("getConnection"):
		top = temp.getConnection()
		if top != null and top.has_method("getParent"):
			top = top.getParent()

	temp = get_node("bottom")
	if temp != null and temp.has_method("getConnection"):
		bottom = temp.getConnection()
		if bottom != null and bottom.has_method("getParent"):
			bottom = bottom.getParent()
			
	temp = get_node("left")
	if temp != null and temp.has_method("getConnection"):
		left = temp.getConnection()
		if left != null and left.has_method("getParent"):
			left = left.getParent()
			
	temp = get_node("right")

	if temp != null and temp.has_method("getConnection"):
		right = temp.getConnection()
		if right != null and right.has_method("getParent"):
			right = right.getParent()
	return 0

## This is a generic import, works for everything that isn't a parameter or function.
## Returns two things
## Arg 1 is the instruction to execute for this line list of compile instructions
## Arg 2 is the next block, if null end of sequence.
func exportBlock(allowed, genBlock):
	var temp = right
	var params = []
	while temp != null:
		if temp.type != "comma": # Parameter seperator
#			params.append(block)
			pass
		temp = temp.right
		
	var ins = instruction.new()
	ins.bindParams(params)	
	return [ins, bottom]
	
func getBelow():
	return bottom
	
func getRight():
	return right
	
func getType():
	return type
