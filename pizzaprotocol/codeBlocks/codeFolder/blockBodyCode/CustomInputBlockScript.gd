extends blockBehavior
class_name CustomInputBlock

func _ready():
	self.type = "CustomInput"

func _physics_process(delta: float) -> void:
	self.doPhysics(delta)


func returnSelf():
	var temp = pizzaString.new()
	var sVal = get_node("LineEdit")
	temp.setValue(sVal.text) 
	return temp
