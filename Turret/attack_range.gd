extends Area2D

@onready var area = $attack_range_area

var range = 100

func _ready() -> void:
	var shape = area.shape
	shape.radius = range

func _draw():
	draw_circle(Vector2.ZERO, range, Color(1,0,0,0.1))
