extends Node3D


var xr_interface: XRInterface
var web_browser: Node3D
var current_url = ""

func _ready():
	var left_controller = XRHelpers.get_left_controller(get_node("/root/Main/XROrigin3D"))
	var right_controller = XRHelpers.get_right_controller(get_node("/root/Main/XROrigin3D"))
	
	left_controller.input_float_changed.connect(self._on_left_input_float_changed)
	right_controller.input_float_changed.connect(self._on_right_input_float_changed)
		
	web_browser = get_node("%WebBrowser")
	print(web_browser)
		
func spin_button_pressed(url, anchor_node):
	if current_url != url:
		current_url = url
		web_browser.load_url(url)
		await get_tree().create_timer(1).timeout
		set_web_browser_position(anchor_node)
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

func _on_left_input_float_changed(name, value):
	if current_url == "":
		return
		
	if value > 0.25:
		web_browser.emulateClickOnSpinButton()
	elif value == 0:
		pass

func _on_right_input_float_changed(name, value):
	if current_url == "":
		return
		
	if value > 0.25:
		web_browser.emulateClickOnSpinButton()
	elif value == 0:
		pass
