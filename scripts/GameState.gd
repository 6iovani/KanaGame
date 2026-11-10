extends Node

var selected_mode:String
var selected_difficulty:float
var selected_level:String
var player_health:int

func set_player_health() -> int:
	if GameState.selected_level == "beginner":
		player_health = 5
	if GameState.selected_level == "master":
		player_health = 3
	return player_health

			
func play_flash_once(label: RichTextLabel, duration: float = 0.5) -> void:
	if not is_instance_valid(label):
		return
		
	var tween = label.create_tween()
	# Fade out over half the duration
	tween.tween_property(label, "modulate:a", 0.0, duration / 2.0)
	# Fade back in over the remaining duration
	tween.tween_property(label, "modulate:a", 1.0, duration / 2.0)
