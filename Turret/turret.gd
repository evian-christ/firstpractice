extends Node2D

@onready var mouse_detector = $mouse_detector
@onready var attack_range = $attack_range

@onready var enemy = get_node("/root/Control/Enemy")

var enemy_exists = 0

func _ready() -> void:
	mouse_detector.mouse_entered.connect(_on_mouse_entered)
	mouse_detector.mouse_exited.connect(_on_mouse_exited)
	
	attack_range.area_entered.connect(_enemy_entered)
	attack_range.area_exited.connect(_enemy_exited)
	
	attack_range.visible = false
	
	print(enemy)
	
func _on_mouse_entered() -> void:
	attack_range.visible = true

func _on_mouse_exited() -> void:
	attack_range.visible = false
	
func _enemy_entered(area) -> void:
	enemy_exists = 1
	
func _enemy_exited(area) -> void:
	enemy_exists = 0

func face_position(target_position: Vector2):
	var direction = target_position - position
	var angle = direction.angle()

	rotation = angle
	
func _process(delta: float) -> void:
	if enemy_exists:
		face_position(enemy.global_position)
