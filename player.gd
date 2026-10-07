extends Area2D

var current_input: String = ""
var health:float = 100.0
var current_kana = null

signal press_enter(answer: String)
signal player_death

func _input(event: InputEvent) -> void:
	
	if event is InputEventKey:
		if event.pressed and not event.echo:
			current_input += event.as_text().to_lower()
			get_node("UI/Label").text = current_input
			print(current_input)
			
			if Input.is_action_just_pressed("ui_text_backspace"):
				current_input = current_input.replace("backspace","")
				current_input = current_input.substr(0,current_input.length()-1)
				print("removed last char")
				
			if Input.is_action_just_pressed("ui_accept"):
				current_input = current_input.replace("enter","")
				press_enter.emit(current_input)
				current_input = ""
				
			get_node("UI/Label").text = current_input


func _ready() -> void:
	area_entered.connect(_on_area_entered)

func _on_area_entered(node:Area2D)->void:
	set_health(health - 25.0)


func set_health(new_health:float)->void:
	health = new_health
	get_node("UI/health_bar").value = health
	

	if health <= 0:
		player_death.emit()


	
