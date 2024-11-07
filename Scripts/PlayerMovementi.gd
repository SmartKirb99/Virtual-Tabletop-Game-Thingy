extends CharacterBody3D

@export var speed = 7 # Fast
@export var gravity = 0

 # 0,0,0 X/Length, Y/Height, Z/Width

func _physics_process(delta): # Delta prevents lag spikes, and _physics_process processes physics
	var direction = Vector3.ZERO
	if not is_on_floor():
		velocity.y -= gravity * delta
	else:
		velocity.y = 0
	

	if Input.is_action_pressed("Right"):
		rotate_y(-0.05)
		#direction.x -= 1
	if Input.is_action_pressed("Left"):
		rotate_y(0.05)
		#direction.x += 1
	if Input.is_action_pressed("Forward"):
		#rotate_y(90)
		direction.z = -1
	if Input.is_action_pressed("Backward"):
		#rotate_z(-90)
		direction.z = 1

	
	var saveY = self.velocity.y
	self.velocity = self.transform.basis.z.normalized() * direction.z * speed
	self.velocity.y = saveY
	move_and_slide()
