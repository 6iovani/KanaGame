extends Control


func _on_play_button_pressed()-> void:
	print("pressed play")
	get_tree().change_scene_to_file("res://Main.tscn")
	

func _on_options_button_pressed() -> void:
	print("pressed options")

func _on_exit_button_pressed() -> void:
	print("pressed exit")
	get_tree().quit()



func _on_transition_screen_transitioned() -> void:
	pass # Replace with function body.
