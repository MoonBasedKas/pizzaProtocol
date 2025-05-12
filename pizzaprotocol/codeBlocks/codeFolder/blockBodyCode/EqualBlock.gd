extends blockBehavior
class_name EqualBlock

func _ready():
	self.type = "equal"

func _physics_process(delta: float) -> void:
	self.doPhysics(delta)


func returnSelf():
	var temp = equal.new()
	return temp
