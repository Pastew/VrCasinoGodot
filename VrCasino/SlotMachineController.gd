extends Node3D

#const url_multifly = "https://staticdemo.yggdrasilgaming.com/init/launchClient.html?gameid=10122&lang=en&currency=EUR&org=Demo&key=&fullscreen=yes"
#const url_vikings = "https://staticdemo.yggdrasilgaming.com/init/launchClient.html?gameid=10094&lang=en&currency=EUR&org=Demo&key=&fullscreen=yes"
#const url_gods = "https://staticdemo.yggdrasilgaming.com/init/launchClient.html?gameid=10094&lang=en&currency=EUR&org=Demo&key=&fullscreen=yes"
#const url_sumo = "https://demogamesfree.pragmaticplay.net/gs2c/html5Game.do?extGame=1&symbol=vswaysmegwghts&gname=Sumo%20Supreme%20Megaways&jurisdictionID=99&lobbyUrl=https%3A%2F%2Fclienthub.pragmaticplay.com%2Fslots%2Fgame-library%2F&mgckey=stylename@generic~SESSION@08982afa-5b43-4da8-a81e-01e1faa09778"
#const url_hard_pc = "https://sklep.hard-pc.pl/"

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
