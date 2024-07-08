extends XRController3D

const BUTTON_AREA = "Area3D - Button"
const BUTTON_PRESS_AREA = "Area3D - Button Press"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_3d_point_finger_area_entered(area):
	var object_name = area.get_name()
	
	if object_name == BUTTON_AREA:
		get_node("HandGfx/AnimationPlayer").play_point_anim()
	
	if object_name == BUTTON_PRESS_AREA:
		area.on_pressed()

func _on_area_3d_point_finger_area_exited(area):
	var object_name = area.get_name()
	if object_name == BUTTON_AREA:
		get_node("HandGfx/AnimationPlayer").play_idle_anim()
		
	if object_name == BUTTON_PRESS_AREA:
		area.on_released()
