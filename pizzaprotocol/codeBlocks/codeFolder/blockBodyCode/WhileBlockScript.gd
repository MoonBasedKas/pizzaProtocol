extends blockBehavior
class_name WhileBlock

func _ready():
	self.type = "while"

func _physics_process(delta: float) -> void:
	self.doPhysics(delta)


func returnSelf():
	var temp = WhilePizza.new()
	var i = self
	var cond = []
	var count = 0
	while i != null:
		
		if i.getType() == "endWhile":
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
