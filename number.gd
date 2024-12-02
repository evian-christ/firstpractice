extends Control

var counter: int = 0

@onready var label = $Label
@onready var button = $Button

func _ready() -> void:
	button.pressed.connect(_on_button_pressed)
	label.text = str(counter)

func _on_button_pressed():
	counter += 1
	label.text = str(counter)
