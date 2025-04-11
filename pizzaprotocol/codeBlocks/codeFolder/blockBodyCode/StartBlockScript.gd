extends blockBehavior

func _ready():
	self.type = "start"

func _physics_process(delta: float) -> void:
	self.doPhysics(delta)


func returnSelf():
	return 0
