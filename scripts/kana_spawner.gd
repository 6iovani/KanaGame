extends Node2D

var kana_scene = preload("res://kana.tscn")
var new_fall_speed:float = GameState.selected_difficulty


func _on_timer_timeout() -> void:
	var kana = kana_scene.instantiate()

	var area_position: Vector2 = $spawn_area.global_position
	var area_size: Vector2 = $spawn_area.size

	var half_width: float = kana.get_node("Sprite2D").texture.get_width() / 2.0

	var min_x: float = area_position.x + half_width
	var max_x: float = area_position.x + area_size.x - half_width

	kana.global_position.x = randf_range(min_x, max_x)
	kana.global_position.y = area_position.y

	kana.fall_speed = new_fall_speed

	add_child(kana)
