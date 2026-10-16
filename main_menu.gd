extends Control


func _on_play_button_pressed()-> void:
	print("pressed play")
	$"UI container/VBoxContainer/play_button".hide()
	$"UI container/VBoxContainer/options_button".hide()
	$"UI container/VBoxContainer/exit_button".hide()
	
	
	$"UI container/VBoxContainer/hiragana_button".show()
	$"UI container/VBoxContainer/katakana_button".show()
	$"UI container/VBoxContainer/both_modes_button".show()
	$"UI container/back_button".show()
	
	$"UI container/comment_label".text = "Which kana do you want to learn?"
	
func _on_options_button_pressed() -> void:
	print("pressed options")

func _on_exit_button_pressed() -> void:
	print("pressed exit")
	get_tree().quit()



func _on_hiragana_button_pressed() -> void:
	print("hiragana button pressed")

	GameState.selected_mode = "hiragana"
	
	$"UI container/VBoxContainer/hiragana_button".hide()
	$"UI container/VBoxContainer/katakana_button".hide()
	$"UI container/VBoxContainer/both_modes_button".hide()
	
	$"UI container/VBoxContainer/normal_mode_button".show()
	$"UI container/VBoxContainer/hard_mode_button".show()
	
	$"UI container/back_button".hide()
	$"UI container/back_button2".show()
	
	$"UI container/comment_label".text = "Choose a difficulty"


func _on_katakana_button_pressed() -> void:
	print("katakana button pressed")

	GameState.selected_mode = "katakana"
	
	$"UI container/VBoxContainer/hiragana_button".hide()
	$"UI container/VBoxContainer/katakana_button".hide()
	$"UI container/VBoxContainer/both_modes_button".hide()
	
	$"UI container/VBoxContainer/normal_mode_button".show()
	$"UI container/VBoxContainer/hard_mode_button".show()
	
	$"UI container/back_button".hide()
	$"UI container/back_button2".show()
	
	$"UI container/comment_label".text = "Choose a difficulty"


func _on_both_modes_button_pressed() -> void:
	print("both button pressed")

	GameState.selected_mode = "hiragana + katakana"
	
	$"UI container/VBoxContainer/hiragana_button".hide()
	$"UI container/VBoxContainer/katakana_button".hide()
	$"UI container/VBoxContainer/both_modes_button".hide()
	
	$"UI container/VBoxContainer/normal_mode_button".show()
	$"UI container/VBoxContainer/hard_mode_button".show()
	
	$"UI container/back_button".hide()
	$"UI container/back_button2".show()
	
	$"UI container/comment_label".text = "Choose a difficulty"


func _on_back_button_pressed() -> void:
	$"UI container/VBoxContainer/play_button".show()
	$"UI container/VBoxContainer/options_button".show()
	$"UI container/VBoxContainer/exit_button".show()
	
	$"UI container/VBoxContainer/hiragana_button".hide()
	$"UI container/VBoxContainer/katakana_button".hide()
	$"UI container/VBoxContainer/both_modes_button".hide()
	
	$"UI container/back_button".hide()
	
	$"UI container/comment_label".text = "Master all the Kana!"

func _on_back_button_2_pressed() -> void:
	$"UI container/VBoxContainer/normal_mode_button".hide()
	$"UI container/VBoxContainer/hard_mode_button".hide()
	
	$"UI container/VBoxContainer/hiragana_button".show()
	$"UI container/VBoxContainer/katakana_button".show()
	$"UI container/VBoxContainer/both_modes_button".show()	
	
	
	$"UI container/back_button2".hide()
	$"UI container/back_button".show()
	
	$"UI container/comment_label".text = "Which kana do you want to learn?"

func _on_normal_mode_button_pressed() -> void:
	GameState.selected_difficulty= "normal"
	get_tree().change_scene_to_file("res://Main.tscn")
	
func _on_hard_mode_button_pressed() -> void:
	GameState.selected_difficulty= "normal"
	get_tree().change_scene_to_file("res://Main.tscn")
