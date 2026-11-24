extends Node2D


func _ready():
	display_stats(GameState.final_stats)

func _on_restart_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Main.tscn")



func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu.tscn")


#score_counter,correct_guess_counter,wrong_guess_counter,missed_counter
func display_stats(stats:Array)->void:
	
	$points.text = "[wave freq=3]points : " + str(stats[0])
	$incorrect_count.text = "[wave freq=3]incorrect : " + str(stats[2])
	$correct_count.text = "[wave freq=3]correct : " + str(stats[1])
	$miss_count.text = "[wave freq=3]misses : " + str(stats[3])
