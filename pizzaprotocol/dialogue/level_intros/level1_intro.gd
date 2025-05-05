extends Node

var dialogue_control: DialogueControl
var level_dialogues = [
    "Welcome to Pizza Protocol!",
    "In this game, you'll learn to program by delivering pizzas.",
    "Use the code blocks to guide your delivery robot.",
    "Let's start with your first delivery!"
]

func _ready():
    dialogue_control = $DialogueControl
    dialogue_control.dialogue_complete.connect(_on_dialogue_complete)
    start_intro()

func start_intro():
    dialogue_control.set_dialogue_list(level_dialogues)

func _on_dialogue_complete():
    # Load the actual level
    get_tree().change_scene_to_file("res://scenes/level1.tscn")