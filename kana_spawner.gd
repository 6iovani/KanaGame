extends Node2D

var kana_scene = preload("res://kana.tscn")
var new_fall_speed:float = 50.0 


func _on_timer_timeout() -> void:

	var screen_size: Vector2 = get_viewport_rect().size
	var kana = kana_scene.instantiate()

	var half_width: float = kana.get_node("Sprite2D").texture.get_width() / 2.0

	kana.position.x = randf_range(half_width, screen_size.x - half_width)
	kana.position.y = 0.0
	
	kana.fall_speed += new_fall_speed 

	add_child(kana)
