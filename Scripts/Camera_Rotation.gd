extends Camera3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	self.rotate_y(0.003)
	#self.rotate_x(1)
	#self.rotate_z(1)
	#Don't use the number 1, that causes seizures (Probably)
	#0.003 is likely the best option for like a panoramic view
