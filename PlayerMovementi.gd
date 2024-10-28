extends CharacterBody3D
var speed = 3.5
#Welp there goes Gravity

# X,Y,Z X/Length, Y/Height, Z/Width

func _physics_process(delta):
	if Input.is_action_pressed("Right"):
		self.translate(Vector3.RIGHT)
	if Input.is_action_pressed("Left"):
		self.translate(Vector3.LEFT)
	if Input.is_action_pressed("Forward"):
		self.translate(Vector3.FORWARD)
	if Input.is_action_pressed("Backward"):
		self.translate(Vector3.BACK)
	if Input.is_action_pressed("Down"):
		self.translate(Vector3.DOWN)
	if Input.is_action_pressed("Up"):
		self.translate(Vector3.UP)
