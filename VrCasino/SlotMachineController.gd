extends Node3D

#const url_multifly = "https://staticdemo.yggdrasilgaming.com/init/launchClient.html?gameid=10122&lang=en&currency=EUR&org=Demo&key=&fullscreen=yes"
#const url_vikings = "https://staticdemo.yggdrasilgaming.com/init/launchClient.html?gameid=10094&lang=en&currency=EUR&org=Demo&key=&fullscreen=yes"
#const url_gods = "https://staticdemo.yggdrasilgaming.com/init/launchClient.html?gameid=10094&lang=en&currency=EUR&org=Demo&key=&fullscreen=yes"
#const url_hard_pc = "https://sklep.hard-pc.pl/"

@export var debug_button: bool = false : set = debug
		
func debug(new_value: bool) -> void:
	pass
	#_on_play_button_pressed()
	
@export var url: String

const WEB_BROWSER_ANCHOR = "./WebBrowserAnchor"


@onready var play_button := $PlayButton/InteractableAreaButton

func _ready():
	play_button.button_pressed.connect(_on_play_button_pressed)

func _process(delta):
	pass

func _on_play_button_pressed(_button) -> void:
	var anchor_node = get_node(WEB_BROWSER_ANCHOR)
	get_node("%GameManager").spin_button_pressed(url, anchor_node)

func _on_button_released():
	pass
