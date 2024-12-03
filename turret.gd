extends Node2D

@onready var mouse_filter = $mouse_filter

var attack_range
var attack_range_visible

func _ready() -> void:
	attack_range_visible = false
	attack_range = 100

	# Establishing mask area connection
	mouse_filter.connect("mouse_entered", Callable(self, "_on_mouse_entered"))

func _on_mouse_entered():
	print("entered")
