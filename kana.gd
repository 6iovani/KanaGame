extends Area2D

var fall_speed: float = 0.0
var kana_dicts:Array = []

var hiragana: Dictionary = {
	"a": preload("res://sprites/hiragana_a.png"),
	"i": preload("res://sprites/hiragana_i.png"),
	"u": preload("res://sprites/hiragana_u.png"),
	"e": preload("res://sprites/hiragana_e.png"),
	"o": preload("res://sprites/hiragana_o.png"),
}

var katakana: Dictionary = {
	# --- Basic vowels ---
	"a": preload("res://sprites/katakana_a.png"),
	"i": preload("res://sprites/katakana_i.png"),
	"u": preload("res://sprites/katakana_u.png"),
	"e": preload("res://sprites/katakana_e.png"),
	"o": preload("res://sprites/katakana_o.png"),
}

var kana_list:Dictionary = select_mode().pick_random()
var random_kana:String = kana_list.keys().pick_random()
var romanization: String = random_kana


func _ready() -> void:
	add_to_group('kana')
	set_kana_sprite(random_kana)
	area_entered.connect(_on_area_entered)

func _process(delta: float) -> void:
	position.y += fall_speed * delta

func set_kana_sprite(sprite:String):
	$Sprite2D.texture = kana_list[sprite]

func _on_area_entered(node:Area2D) -> void:
	queue_free()
	
func select_mode()->Array:
	if GameState.selected_mode == "hiragana":
		kana_dicts = [hiragana]
	elif GameState.selected_mode == "katakana":
		kana_dicts.append(katakana)
	elif GameState.selected_mode == "both":
		kana_dicts.append(hiragana)
		kana_dicts.append(katakana)
	
	return kana_dicts
		
