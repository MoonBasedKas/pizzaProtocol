extends instruction

class_name start

var instructionType = "Start"
var instructions = []

## Fetches the instructions within this
func fetchInstructions():
	return instructions
	
## Appends a new instruction
func addInstruction(ins):
	self.instructions.append(ins)
	
## This should never be called.
func exec(inter, vars):
	inter.execute()
