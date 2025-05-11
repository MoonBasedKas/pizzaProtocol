extends blockBehavior
class_name EndIfBlock

func _ready():
	self.type = "endIf"

func _physics_process(delta: float) -> void:
	self.doPhysics(delta)


func returnSelf():
	var temp = EndIf.new() 
	return temp
