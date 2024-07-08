extends Node3D

#const url_multifly = "https://staticdemo.yggdrasilgaming.com/init/launchClient.html?gameid=10122&lang=en&currency=EUR&org=Demo&key=&fullscreen=yes"
#const url_vikings = "https://staticdemo.yggdrasilgaming.com/init/launchClient.html?gameid=10094&lang=en&currency=EUR&org=Demo&key=&fullscreen=yes"
#const url_gods = "https://staticdemo.yggdrasilgaming.com/init/launchClient.html?gameid=10094&lang=en&currency=EUR&org=Demo&key=&fullscreen=yes"
#const url_hard_pc = "https://sklep.hard-pc.pl/"

@export var debug_button: bool = false : set = debug
		
func debug(new_value: bool) -> void:
	button_pressed()
	
@export var url: String

const WEB_BROWSER_ANCHOR = "./WebBrowserAnchor"
const VR_CASINO = "/root/StartZone/VrCasino"

func _ready():
	pass

func _process(delta):
	pass

func button_pressed():
	var anchor_node = get_node(WEB_BROWSER_ANCHOR)
	get_node(VR_CASINO).spin_button_pressed(url, anchor_node)

func button_released():
	pass
