extends Control


func _ready() -> void:
	hide()

func pause_game() -> void:
	get_tree().paused = true
	show()

func resume_game() -> void:
	hide()
	get_tree().paused = false

func _on_resume_button_pressed() -> void:
	resume_game()


func _on_back_button_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://main_menu.tscn")
	
	
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		if get_tree().paused:
			resume_game()
		else:
			pause_game()
