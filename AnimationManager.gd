extends Node


func flash(node: Control, duration: float = 0.3) -> void:
	if not is_instance_valid(node):
		return
		
	var tween = node.create_tween()
	# Fade out over half the duration
	tween.tween_property(node, "modulate:a", 0.0, duration / 2.0)
	# Fade back in over the remaining duration
	tween.tween_property(node, "modulate:a", 1.0, duration / 2.0)

@export var pop_duration: float = 0.4
@export var display_duration: float = 1.0
@export var fade_duration: float = 1

func fade_in() -> void:
	
	#scale = Vector2.ZERO
	#modulate.a = 0.0

	var tween = create_tween()

	# Pop in and fade in 
	tween.set_parallel(true)

	tween.tween_property(
		self, "scale", Vector2.ONE, pop_duration
	).set_trans(Tween.TRANS_ELASTIC).set_ease(Tween.EASE_OUT)

	tween.tween_property(
		self, "modulate:a", 1.0, fade_duration
	)

func fade_out()-> void:

	var tween = create_tween()
	
	# Fade out and shrink 
	tween.set_parallel(true)

	tween.tween_property(
		self, "modulate:a", 0.0, fade_duration
	)

	tween.tween_property(
		self, "scale", Vector2(0.8, 0.8), fade_duration
	).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_IN)
	
