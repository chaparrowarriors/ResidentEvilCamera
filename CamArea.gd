extends Area3D
 
func _ready():
	body_entered.connect(enable_camera)
 
func enable_camera(body):
	if body.name != "Player":
		return
	if has_node("Camera"):
		var cam = get_node("Camera")
		cam.make_current()
		if cam.has_method("set_target"):
			cam.set_target(body)
