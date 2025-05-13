extends Node

var dialogue_control: DialogueControl
var level_dialogues = [
	"Congrats on your first delivery!",
	"Let's increase the challenge of this one a bit.",
	"You need to build a program to pick the correct street and cross the correct finish line.",
	"The delivery is on Pizza Street."
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
	get_tree().change_scene_to_file("res://scenes/level2/level2.tscn")
