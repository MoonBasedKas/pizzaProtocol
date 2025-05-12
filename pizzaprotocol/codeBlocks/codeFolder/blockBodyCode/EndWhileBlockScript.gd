extends blockBehavior
class_name EndWhileBlock

func _ready():
	self.type = "endWhile"

func _physics_process(delta: float) -> void:
	self.doPhysics(delta)


func returnSelf():
	var temp = EndWhile.new()
	var i = self
	var count = 0
	while i != null:
		
		if i.getType() == "while":
			break
		else:
			count += 1
		i = i.getAbove()
		
	if i == null:
		count = 1
#		A bizare 1 block infinite loop of a monster.
		
	temp.setJump(count)
	return temp
