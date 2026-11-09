extends RichTextLabel

@export var pop_duration: float = 0.4
@export var display_duration: float = 1.0
@export var fade_duration: float = 0.3

var score_counter:int = 0
var wrong_guess_counter:int = 0
var streak_counter:int = 0
var missed_counter:int = 0

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
	
	streak_counter = 0
	$"../streak_counter".text = "x" + str(streak_counter)
	
	if score_counter < 0:
		$"../score_counter".text = "x" + str(score_counter)
	else:
		score_counter -= 50
		$"../score_counter".text = "x" + str(score_counter)
	
	missed_counter +=1
	$"../missed_counter".text = "x" + str(missed_counter)
	print("miss")


func _on_main_correct(pos: Vector2) -> void:
	text = "Correct"
	add_theme_color_override("default_color", Color(0.18, 0.51, 0.0))
	play_pop_animation(pos)
	
	streak_counter += 1
	$"../streak_counter".text = "x" + str(streak_counter)
	
	score_counter += 100
	$"../score_counter".text = "x" + str(score_counter)
	print("correct!")


func _on_main_wrong(pos: Vector2) -> void:
	text = "Wrong!"
	add_theme_color_override("default_color", Color(0.918, 0.161, 0.0))
	play_pop_animation(pos)
	
	streak_counter = 0
	$"../streak_counter".text = "x" + str(streak_counter)
	
	if score_counter <= 0:
		$"../score_counter".text = "x" + str(0)
	else:
		score_counter -= 25
		$"../score_counter".text = "x" + str(score_counter)
	
	wrong_guess_counter +=1
	$"../wrong_counter".text = "x" + str(wrong_guess_counter)
	print("wrong guess")
