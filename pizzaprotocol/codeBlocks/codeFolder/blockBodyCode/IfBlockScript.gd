extends blockBehavior
class_name CustomInputBlock

func _ready():
	self.type = "if"

func _physics_process(delta: float) -> void:
	self.doPhysics(delta)


func returnSelf():
	var temp = IfBlock.new()
	var sVal = get_node("LineEdit")
	temp.setValue(sVal.text) 
	var i = self
	var count = 0
	while i != null:
		
		if i.getType() == "endIf":
			break
		else:
			count += 1
		i = i.getBelow()
		
	if i == null:
		count = 1
	
	temp.setJump(count)
	return temp
