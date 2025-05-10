extends blockBehavior
class_name LookFrontBlock

func _ready():
	self.type = "lookFront"

func _physics_process(delta: float) -> void:
	self.doPhysics(delta)


func returnSelf():
	var temp = senseFront.new() 
	return temp
