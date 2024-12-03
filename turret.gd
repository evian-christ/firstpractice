extends Node2D

@onready var mouse_detector = $mouse_detector

func _ready() -> void:
	mouse_detector.mouse_entered.connect(_on_mouse_detector_mouse_entered)
	
func _on_mouse_detector_mouse_entered() -> void:
	print("")
