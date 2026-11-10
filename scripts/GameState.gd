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
