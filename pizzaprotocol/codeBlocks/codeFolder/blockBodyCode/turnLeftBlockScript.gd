extends blockBehavior

class_name turnLeftBlock

func _ready():
	self.type = "turnleft"

func _physics_process(delta: float) -> void:
	self.doPhysics(delta)


func returnSelf():
	# This should be turn left but it works as intended...?
	return turnRight.new()
