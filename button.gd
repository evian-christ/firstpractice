extends Button

onready var label = $Label

func _on_Button_pressed() -> void:
	label.text = "Button Clicked"
