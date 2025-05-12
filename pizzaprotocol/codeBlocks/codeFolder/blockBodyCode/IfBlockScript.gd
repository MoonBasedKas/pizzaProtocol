extends blockBehavior
class_name IfBlock

func _ready():
	self.type = "if"

func _physics_process(delta: float) -> void:
	self.doPhysics(delta)


func returnSelf():
	var temp = IfPizza.new()
	var i = self
	var cond = []
	var count = 0
	while i != null:
		
		if i.getType() == "endIf":
			break
		else:
			count += 1
		i = i.getBelow()
		
	if i == null:
		count = 1
		
	i = self.getRight()
	while i != null:
		print(i)
		cond.append(i.returnSelf())
		i = i.getRight()
	
		
	temp.setCond(cond)
	temp.setJump(count)
	return temp
