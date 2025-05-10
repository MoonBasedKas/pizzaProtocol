extends blockBehavior
class_name LookLeftBlock

func _ready():
	self.type = "lookLeft"

func _physics_process(delta: float) -> void:
	self.doPhysics(delta)


func returnSelf():
	var temp = senseLeft.new() 
	return temp
