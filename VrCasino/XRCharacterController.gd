extends XROrigin3D

var rotated_last_frame = false

func _ready():
	var left_controller = get_node("/root/VrCasino/XROrigin3D/LeftController")
	left_controller.input_vector2_changed.connect(self._on_left_input_vector2_changed)
	
	var right_controller = get_node("/root/VrCasino/XROrigin3D/RightController")
	right_controller.input_vector2_changed.connect(self._on_right_input_vector2_changed)

func _process(delta):
	pass

func _on_left_input_vector2_changed(name, value):
	var speed = 2.0
	var movement = Vector3(value.x, 0, -value.y) * speed
	
	var camera = get_node("XRCamera3D")
	var camera_transform = camera.transform

	# Calculate the direction based on the camera's orientation
	var direction = camera_transform.basis * movement
	direction.y = 0  # Ignore vertical movement
	direction = direction.normalized() * speed
	
	translate(direction * get_process_delta_time())
	
func _on_right_input_vector2_changed(name, value):
	var rotate_angle = 5
	var input = value.x
	print(input)
	
	if input == 0:
		rotated_last_frame = false
	else:
		if rotated_last_frame:
			return
		
		rotated_last_frame = true
		if input > 0:
			rotate_object_local(Vector3(0,1,0), rotate_angle)
		elif input < 0:
			rotate_object_local(Vector3(0,1,0), -rotate_angle)
