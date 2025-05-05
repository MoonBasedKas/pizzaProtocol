extends Control

class_name DialogueControl

var dialogue_list: Array = []
var current_index: int = 0
var is_dialogue_active: bool = false

@onready var dialogue_label = $DialoguePanel/Label
@onready var dialogue_panel = $DialoguePanel

func _ready():
    hide()
    dialogue_panel.hide()

func display(text: String):
    dialogue_panel.show()
    show()
    is_dialogue_active = true
    dialogue_label.text = text

func set_dialogue_list(dialogues: Array):
    dialogue_list = dialogues
    current_index = 0
    if dialogue_list.size() > 0:
        display(dialogue_list[0])

func advance_dialogue():
    current_index += 1
    if current_index < dialogue_list.size():
        display(dialogue_list[current_index])
    else:
        is_dialogue_active = false
        hide()
        dialogue_panel.hide()
        # Emit signal that dialogue is complete
        dialogue_complete.emit()

func _input(event):
    if is_dialogue_active and event.is_action_pressed("click"):
        advance_dialogue()

signal dialogue_complete