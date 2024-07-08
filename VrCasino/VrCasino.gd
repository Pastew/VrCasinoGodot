extends Node3D

const WEB_BROWSER = "./WebBrowser"

var xr_interface: XRInterface
var web_browser: Node3D
var current_url = ""

func _ready():
	xr_interface = XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.is_initialized():
		print("OpenXR initialized successfully")

		# Turn off v-sync!
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)

		# Change our main viewport to output to the HMD
		get_viewport().use_xr = true
	else:
		print("OpenXR not initialized, please check if your headset is connected")
		
	web_browser = get_node(WEB_BROWSER)
	print(web_browser)
		
func spin_button_pressed(url, anchor_node):
	if current_url != url:
		current_url = url
		set_web_browser_position(anchor_node)
		web_browser.load_url(url)
	else:
		web_browser.emulateClickOnSpinButton()
		
func set_web_browser_position(node):
	var global_transform = node.global_transform
	
	var pos = global_transform.origin
	var basis = global_transform.basis
	var scl = node.scale
	
	web_browser.global_transform.origin = pos
	web_browser.global_transform.basis = basis
	web_browser.scale = scl
