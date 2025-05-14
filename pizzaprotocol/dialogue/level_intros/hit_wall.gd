extends Node

var dialogue_control: DialogueControl
var level_dialogues = [
	"Game over..."
]

func _ready():
	dialogue_control = $DialogueControl
	dialogue_control.dialogue_complete.connect(_on_dialogue_complete)
	start_intro()

func start_intro():
	dialogue_control.set_dialogue_list(level_dialogues)

func _on_dialogue_complete():
	# Load the actual level
	ProgramData.stopExec()
	get_tree().change_scene_to_file("res://scenes/level1/level1.tscn")
