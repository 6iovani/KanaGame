extends Node2D

var kana_scene = preload("res://kana.tscn")
var new_fall_speed:float = 50.0


func _ready() -> void:
	$Timer.timeout.connect(_on_timer_timeout)
	$Timer.start()
	

func _on_timer_timeout() -> void:
	
	var screen_size: Vector2 = get_viewport_rect().size
	var kana = kana_scene.instantiate()
	
	kana.position.x = randf_range(10.0, screen_size.x)
	kana.position.y = 0.0
	
	kana.fall_speed += new_fall_speed
	
	
	if new_fall_speed < 90.0:
		new_fall_speed += 10
		print(new_fall_speed)
	else:
		print("max fall speed reached")

	
	add_child(kana)
