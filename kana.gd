extends Area2D
var fall_speed: float = 50.0


# perirodcically choose from the selected characters array

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

var kana_dicts:Array = [hiragana, katakana]
var kana_list:Dictionary = kana_dicts.pick_random()

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
