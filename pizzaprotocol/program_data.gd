extends Node

class_name program_data


var creation_queue = []
var exec = false

## Disables execution
func stopExec():
	exec = false

## Sets our exec to true.
func startExec():
	exec = true
	
## Returns if we are ready to begin wrapping for execution
func getExec():
	return exec

## Adds a new item to the queue.
func addQueue(name):
	creation_queue.append(name)
	
## dequeues an item
func dequeue():
	if len(creation_queue) != 0:
		return creation_queue.pop_front()
	return null
	
## Prints the queue of blocks to create	
func printQueue():
	print(self.creation_queue)

		
#func _physics_process(delta: float) -> void:
	#printQueue()
