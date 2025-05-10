extends blockBehavior
class_name MoveBlock

func _ready():
	self.type = "move"

func _physics_process(delta: float) -> void:
	self.doPhysics(delta)


func returnSelf():
	var temp = move.new() 
	return temp
