extends Node

var dialogue_control: DialogueControl
var level_dialogues = [
	"Hello, you are a pizza professional making a delivery robot.",
	"Use the code blocks to guide your delivery robot.",
	"Let's start with your first delivery!",
	"You'll want the robot to cross the finish line.",
	"To make a program you'll click the blocks on the left.",
	"Then drag the block to touch by their connectors.",
	"Every program will at least need a start node.",
	"To look at the level press \\ and click on the arrow to start the level once ready"
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
