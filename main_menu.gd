extends Control

signal mode_selected(mode:String)

func _on_play_button_pressed()-> void:
	print("pressed play")
	$"UI container/VBoxContainer/play_button".hide()
	$"UI container/VBoxContainer/options_button".hide()
	$"UI container/VBoxContainer/exit_button".hide()
	
	
	$"UI container/VBoxContainer/hiragana_button".show()
	$"UI container/VBoxContainer/katakana_button".show()
	$"UI container/VBoxContainer/both_modes_button".show()
	$"UI container/back_button".show()
	
func _on_options_button_pressed() -> void:
	print("pressed options")

func _on_exit_button_pressed() -> void:
	print("pressed exit")
	get_tree().quit()



func _on_hiragana_button_pressed() -> void:
	print("hiragana button pressed")

	mode_selected.emit("hiragana")
	GameState.selected_mode = "hiragana"
	
	get_tree().change_scene_to_file("res://Main.tscn")



func _on_katakana_button_pressed() -> void:
	print("katakana button pressed")

	mode_selected.emit("katakana")
	GameState.selected_mode = "katakana"
	
	get_tree().change_scene_to_file("res://Main.tscn")


func _on_both_modes_button_pressed() -> void:
	print("both button pressed")

	mode_selected.emit("hiragana + katakana")
	GameState.selected_mode = "both"
	
	get_tree().change_scene_to_file("res://Main.tscn")


func _on_back_button_pressed() -> void:
	
	$"UI container/VBoxContainer/play_button".show()
	$"UI container/VBoxContainer/options_button".show()
	$"UI container/VBoxContainer/exit_button".show()
	
	$"UI container/VBoxContainer/hiragana_button".hide()
	$"UI container/VBoxContainer/katakana_button".hide()
	$"UI container/VBoxContainer/both_modes_button".hide()
	$"UI container/back_button".hide()
