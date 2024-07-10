extends Node

class_name SpinButtonPosition

static func get_pos_by_url(url: String) -> Vector2:
	var positions = {
		"yggdrasilgaming": Vector2(960, 972),
		"pragmaticplay": Vector2(1400, 970)
	}
	
	for key in positions.keys():
		if key in url:
			return positions[key]
	
	return Vector2.ZERO
