extends Node

var selected_mode:String
var selected_difficulty:float



func play_flash_once(label: RichTextLabel, duration: float = 0.5) -> void:
	if not is_instance_valid(label):
		return
		
	var tween = label.create_tween()
	# Fade out over half the duration
	tween.tween_property(label, "modulate:a", 0.0, duration / 2.0)
	# Fade back in over the remaining duration
	tween.tween_property(label, "modulate:a", 1.0, duration / 2.0)
