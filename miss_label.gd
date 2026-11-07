extends RichTextLabel

@export var pop_duration: float = 0.4
@export var display_duration: float = 1.0
@export var fade_duration: float = 0.3

func _ready() -> void:
	scale = Vector2.ZERO
	modulate.a = 0.0

func play_pop_animation(spawn_position: Vector2) -> void:
	global_position = spawn_position
	
	pivot_offset = size / 2.0
	
	scale = Vector2.ZERO
	modulate.a = 1.0
	
	var tween = create_tween()
	
	tween.tween_property(self, "scale", Vector2(1.0, 1.0), pop_duration)\
		.set_trans(Tween.TRANS_ELASTIC)\
		.set_ease(Tween.EASE_OUT)
	
	tween.tween_interval(display_duration)
	
	tween.parallel().tween_property(self, "modulate:a", 0.0, fade_duration)
	tween.parallel().tween_property(self, "scale", Vector2(0.8, 0.8), fade_duration)\
		.set_trans(Tween.TRANS_QUAD)\
		.set_ease(Tween.EASE_IN)


func _on_player_missed_kana(kana_position: Vector2) -> void:
	text = "Miss"
	add_theme_color_override("default_color", Color(0.918, 0.161, 0.0))
	play_pop_animation(kana_position)


func _on_main_correct(pos: Vector2) -> void:
	text = "Correct"
	add_theme_color_override("default_color", Color(0.18, 0.51, 0.0))
	play_pop_animation(pos)


func _on_main_wrong(pos: Vector2) -> void:
	text = "Wrong!"
	add_theme_color_override("default_color", Color(0.918, 0.161, 0.0))
	play_pop_animation(pos)
