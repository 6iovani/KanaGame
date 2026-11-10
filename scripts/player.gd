extends Area2D

var current_input: String = ""
var health:int = GameState.set_player_health()
signal press_enter(answer: String)
signal player_death
signal missed_kana(kana_position:Vector2)

func _input(event: InputEvent) -> void:
		
	if event is InputEventKey:
		if event.pressed and not event.echo:

			var key_text: String = event.as_text().to_lower()

			if key_text.length() == 1 and key_text >= "a" and key_text <= "z":
				current_input += key_text
				print(current_input)

			elif event.keycode == KEY_BACKSPACE:
				if current_input.length() > 0:
					current_input = current_input.substr(0, current_input.length() - 1)
					print("removed last char")

			elif event.keycode == KEY_ENTER or event.keycode == KEY_KP_ENTER:
				if current_input == "":
					print("input is empty")
					return
					
				press_enter.emit(current_input)
				current_input = ""

			get_node("UI/Label").text = current_input



func _ready() -> void:

	area_entered.connect(_on_area_entered)
	if GameState.selected_level == "beginner":
		health = 5
	if GameState.selected_level == "master":
		health = 3
		
func _on_area_entered(node:Area2D)->void:
	$"../sfx container/sfx_miss".play()
	var x = node.global_position.x
	var kana_position:Vector2 = Vector2(x,600.0)
	missed_kana.emit(kana_position)
	set_health(health - 1)



func set_health(new_health:int)->void:
	
	var current_hearts = $UI/health
	var hearts = current_hearts.get_children()
	
	for i in range(5 - new_health):
		print("hide heart node")
		if current_hearts.get_child_count() > new_health:
			current_hearts.get_child(i).hide()

	health = new_health

	if health == 3:
		for heart in hearts:
			heart.text = "[shake rate=10]+[/shake]"
			heart.add_theme_color_override("default_color", Color(0.929, 0.635, 0.22))

	if health == 1:
		var heart = current_hearts.get_child(4)
		heart.text = "[pulse freq=2][wave freq=13][shake rate=10]+[/shake][/wave][/pulse]"
		heart.add_theme_color_override("default_color", Color(0.918, 0.161, 0.0))
		
	if health <= 0:
		player_death.emit()


	
