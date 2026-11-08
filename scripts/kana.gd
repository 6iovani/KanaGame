extends Area2D


var hiragana: Dictionary = {
	"a": preload("res://assets/sprites/hiragana_a.png"),
	"i": preload("res://assets/sprites/hiragana_i.png"),
	"u": preload("res://assets/sprites/hiragana_u.png"),
	"e": preload("res://assets/sprites/hiragana_e.png"),
	"o": preload("res://assets/sprites/hiragana_o.png"),

	"ka": preload("res://assets/sprites/hiragana_ka.png"),
	"ki": preload("res://assets/sprites/hiragana_ki.png"),
	"ku": preload("res://assets/sprites/hiragana_ku.png"),
	"ke": preload("res://assets/sprites/hiragana_ke.png"),
	"ko": preload("res://assets/sprites/hiragana_ko.png"),

	"sa": preload("res://assets/sprites/hiragana_sa.png"),
	"shi": preload("res://assets/sprites/hiragana_shi.png"),
	"su": preload("res://assets/sprites/hiragana_su.png"),
	"se": preload("res://assets/sprites/hiragana_se.png"),
	"so": preload("res://assets/sprites/hiragana_so.png"),

	"ta": preload("res://assets/sprites/hiragana_ta.png"),
	"chi": preload("res://assets/sprites/hiragana_chi.png"),
	"tsu": preload("res://assets/sprites/hiragana_tsu.png"),
	"te": preload("res://assets/sprites/hiragana_te.png"),
	"to": preload("res://assets/sprites/hiragana_to.png"),

	"na": preload("res://assets/sprites/hiragana_na.png"),
	"ni": preload("res://assets/sprites/hiragana_ni.png"),
	"nu": preload("res://assets/sprites/hiragana_nu.png"),
	"ne": preload("res://assets/sprites/hiragana_ne.png"),
	"no": preload("res://assets/sprites/hiragana_no.png"),

	"ha": preload("res://assets/sprites/hiragana_ha.png"),
	"hi": preload("res://assets/sprites/hiragana_hi.png"),
	"fu": preload("res://assets/sprites/hiragana_fu.png"),
	"he": preload("res://assets/sprites/hiragana_he.png"),
	"ho": preload("res://assets/sprites/hiragana_ho.png"),

	"ma": preload("res://assets/sprites/hiragana_ma.png"),
	"mi": preload("res://assets/sprites/hiragana_mi.png"),
	"mu": preload("res://assets/sprites/hiragana_mu.png"),
	"me": preload("res://assets/sprites/hiragana_me.png"),
	"mo": preload("res://assets/sprites/hiragana_mo.png"),

	"ya": preload("res://assets/sprites/hiragana_ya.png"),
	"yu": preload("res://assets/sprites/hiragana_yu.png"),
	"yo": preload("res://assets/sprites/hiragana_yo.png"),

	"ra": preload("res://assets/sprites/hiragana_ra.png"),
	"ri": preload("res://assets/sprites/hiragana_ri.png"),
	"ru": preload("res://assets/sprites/hiragana_ru.png"),
	"re": preload("res://assets/sprites/hiragana_re.png"),
	"ro": preload("res://assets/sprites/hiragana_ro.png"),

	"wa": preload("res://assets/sprites/hiragana_wa.png"),
	"wo": preload("res://assets/sprites/hiragana_wo.png"),

	"n": preload("res://assets/sprites/hiragana_n.png")
}

var katakana: Dictionary = {
	"a": preload("res://assets/sprites/katakana_a.png"),
	"i": preload("res://assets/sprites/katakana_i.png"),
	"u": preload("res://assets/sprites/katakana_u.png"),
	"e": preload("res://assets/sprites/katakana_e.png"),
	"o": preload("res://assets/sprites/katakana_o.png"),

	"ka": preload("res://assets/sprites/katakana_ka.png"),
	"ki": preload("res://assets/sprites/katakana_ki.png"),
	"ku": preload("res://assets/sprites/katakana_ku.png"),
	"ke": preload("res://assets/sprites/katakana_ke.png"),
	"ko": preload("res://assets/sprites/katakana_ko.png"),

	"sa": preload("res://assets/sprites/katakana_sa.png"),
	"shi": preload("res://assets/sprites/katakana_shi.png"),
	"su": preload("res://assets/sprites/katakana_su.png"),
	"se": preload("res://assets/sprites/katakana_se.png"),
	"so": preload("res://assets/sprites/katakana_so.png"),

	"ta": preload("res://assets/sprites/katakana_ta.png"),
	"chi": preload("res://assets/sprites/katakana_chi.png"),
	"tsu": preload("res://assets/sprites/katakana_tsu.png"),
	"te": preload("res://assets/sprites/katakana_te.png"),
	"to": preload("res://assets/sprites/katakana_to.png"),

	"na": preload("res://assets/sprites/katakana_na.png"),
	"ni": preload("res://assets/sprites/katakana_ni.png"),
	"nu": preload("res://assets/sprites/katakana_nu.png"),
	"ne": preload("res://assets/sprites/katakana_ne.png"),
	"no": preload("res://assets/sprites/katakana_no.png"),

	"ha": preload("res://assets/sprites/katakana_ha.png"),
	"hi": preload("res://assets/sprites/katakana_hi.png"),
	"fu": preload("res://assets/sprites/katakana_fu.png"),
	"he": preload("res://assets/sprites/katakana_he.png"),
	"ho": preload("res://assets/sprites/katakana_ho.png"),

	"ma": preload("res://assets/sprites/katakana_ma.png"),
	"mi": preload("res://assets/sprites/katakana_mi.png"),
	"mu": preload("res://assets/sprites/katakana_mu.png"),
	"me": preload("res://assets/sprites/katakana_me.png"),
	"mo": preload("res://assets/sprites/katakana_mo.png"),

	"ya": preload("res://assets/sprites/katakana_ya.png"),
	"yu": preload("res://assets/sprites/katakana_yu.png"),
	"yo": preload("res://assets/sprites/katakana_yo.png"),

	"ra": preload("res://assets/sprites/katakana_ra.png"),
	"ri": preload("res://assets/sprites/katakana_ri.png"),
	"ru": preload("res://assets/sprites/katakana_ru.png"),
	"re": preload("res://assets/sprites/katakana_re.png"),
	"ro": preload("res://assets/sprites/katakana_ro.png"),

	"wa": preload("res://assets/sprites/katakana_wa.png"),
	"wo": preload("res://assets/sprites/katakana_wo.png"),

	"n": preload("res://assets/sprites/katakana_n.png")
}

var fall_speed: float = 0.0

static var kana_bag: Array[Dictionary] = []
static var bag_mode: String = ""

var kana_list: Dictionary = {}
var random_kana: String = ""
var romanization: String = ""


func _ready() -> void:
	add_to_group("kana")
	area_entered.connect(_on_area_entered)

	if bag_mode != GameState.selected_mode or kana_bag.is_empty():
		refill_kana_bag()

	var next_kana: Dictionary = kana_bag.pop_back()

	if next_kana["script"] == "hiragana":
		kana_list = hiragana
	else:
		kana_list = katakana

	random_kana = next_kana["romanization"]
	romanization = random_kana

	set_kana_sprite(random_kana)

func _process(delta: float) -> void:
	position.y += fall_speed * delta

func set_kana_sprite(sprite:String):
	$Sprite2D.texture = kana_list[sprite]

func _on_area_entered(node:Area2D) -> void:
	queue_free()
	
func select_mode() -> Array[Dictionary]:
	var kana_dicts: Array[Dictionary] = []

	if GameState.selected_mode == "hiragana":
		kana_dicts.append(hiragana)

	elif GameState.selected_mode == "katakana":
		kana_dicts.append(katakana)

	elif GameState.selected_mode == "hiragana + katakana":
		kana_dicts.append(hiragana)
		kana_dicts.append(katakana)

	return kana_dicts


func refill_kana_bag() -> void:
	kana_bag.clear()

	var selected_dicts: Array[Dictionary] = select_mode()

	for i in range(selected_dicts.size()):
		var script_name: String

		if GameState.selected_mode == "hiragana + katakana":
			if i == 0:
				script_name = "hiragana"
			else:
				script_name = "katakana"
		elif GameState.selected_mode == "hiragana":
			script_name = "hiragana"
		else:
			script_name = "katakana"

		for key in selected_dicts[i].keys():
			kana_bag.append({
				"script": script_name,
				"romanization": key
			})

	kana_bag.shuffle()
	bag_mode = GameState.selected_mode
		
