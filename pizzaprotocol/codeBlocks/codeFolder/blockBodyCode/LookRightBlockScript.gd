extends blockBehavior
class_name LookRightBlock

func _ready():
	self.type = "lookRight"

func _physics_process(delta: float) -> void:
	self.doPhysics(delta)


func returnSelf():
	var temp = senseRight.new() 
	return temp
