extends Area2D

var current_input: String = ""
var health:float = 100.0
signal press_enter(answer: String)
signal player_death


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

func _on_area_entered(node:Area2D)->void:
	$"../sfx container/sfx_miss".play()
	set_health(health - 25.0)


func set_health(new_health:float)->void:
	health = new_health
	get_node("UI/health_bar").value = health
	

	if health <= 0:
		player_death.emit()


	
