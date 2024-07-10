extends Node3D

@export var debug_button: bool = false : set = debug
		
func debug(new_value: bool) -> void:
	_notify_game_manager_spin_button_pressed()
	
@export var url: String

const WEB_BROWSER_ANCHOR = "./WebBrowserAnchor"

@onready var play_button := $PlayButton/InteractableAreaButton

func _ready():
	play_button.button_pressed.connect(_on_play_button_pressed)

func _process(delta):
	pass

func _on_play_button_pressed(_button) -> void:
	_notify_game_manager_spin_button_pressed()
	
func _notify_game_manager_spin_button_pressed():
	var anchor_node = get_node(WEB_BROWSER_ANCHOR)
	var game_manager = get_node("%GameManager")
	
	game_manager.spin_button_pressed(url, anchor_node)

func _on_button_released():
	pass
