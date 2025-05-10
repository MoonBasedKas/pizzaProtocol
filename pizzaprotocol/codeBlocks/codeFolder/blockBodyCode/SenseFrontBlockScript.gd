extends blockBehavior
class_name SenseFrontBlock

func _ready():
	self.type = "senseFront"

func _physics_process(delta: float) -> void:
	self.doPhysics(delta)


func returnSelf():
	var temp = move.new() 
	print(temp)
	return temp
