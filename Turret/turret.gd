extends Node2D

@onready var mouse_detector = $mouse_detector
@onready var attack_range = $attack_range

var hover = 0
var range = 100

func _ready() -> void:
	mouse_detector.mouse_entered.connect(_on_mouse_entered)
	mouse_detector.mouse_exited.connect(_on_mouse_exited)
	
	attack_range.visible = false
	
func _on_mouse_entered() -> void:
	attack_range.visible = true

func _on_mouse_exited() -> void:
	attack_range.visible = false
