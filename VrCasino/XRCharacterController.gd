extends XROrigin3D

var rotated_last_frame = false

func _ready():
	var left_controller = get_node("/root/VrCasino/XROrigin3D/LeftController")
	left_controller.input_vector2_changed.connect(self._on_left_input_vector2_changed)
	
	var right_controller = get_node("/root/VrCasino/XROrigin3D/RightController")
	right_controller.input_vector2_changed.connect(self._on_right_input_vector2_changed)

func _process(delta):
	pass

