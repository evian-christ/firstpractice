extends Node2D

func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_RIGHT):
		position.x += 5
	elif Input.is_key_pressed(KEY_LEFT):
		position.x -= 5


func _on_mouse_filter_mouse_entered() -> void:
	pass # Replace with function body.
