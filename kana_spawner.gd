extends Node2D

var kana_scene = preload("res://kana.tscn")


func _ready() -> void:
	$Timer.timeout.connect(_on_timer_timeout)
	$Timer.start()


func _on_timer_timeout() -> void:
	print("SPAWNING KANA")
	var screen_size: Vector2 = get_viewport_rect().size
	
	var kana = kana_scene.instantiate()
	
	kana.position.x = randf_range(10.0, screen_size.x)
	kana.position.y = 0.0
	
	add_child(kana)
