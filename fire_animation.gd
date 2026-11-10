
extends AnimatedSprite2D

@export var pop_duration: float = 0.4
@export var display_duration: float = 1.0
@export var fade_duration: float = 1

func _ready() -> void:
	scale = Vector2.ZERO
	modulate.a = 0.0
	play()


func streak_animation() -> void:
	$"../../sfx/streak_get".play()
	show()
	
	scale = Vector2.ZERO
	modulate.a = 0.0

	var tween = create_tween()

	# Pop in and fade in 
	tween.set_parallel(true)

	tween.tween_property(
		self, "scale", Vector2.ONE, pop_duration
	).set_trans(Tween.TRANS_ELASTIC).set_ease(Tween.EASE_OUT)

	tween.tween_property(
		self, "modulate:a", 1.0, fade_duration
	)

func lost_streak()-> void:
	$"../../sfx/streak_lost".play()
	var tween = create_tween()
	
	# Fade out and shrink 
	tween.set_parallel(true)

	tween.tween_property(
		self, "modulate:a", 0.0, fade_duration
	)

	tween.tween_property(
		self, "scale", Vector2(0.8, 0.8), fade_duration
	).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_IN)
	
	await get_tree().create_timer(2.0).timeout
	hide()
