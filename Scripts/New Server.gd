extends Button
@onready var button = get_node("../Join Server")
@onready var serverscene = preload("res://Scenes/Serverlist.tscn").instantiate()
@onready var parent = get_node("../Node3D")
var back_button
# Called when the node enters the scene tree for the first time.
func _ready():
	# Connect the button's pressed signal to the _on_Button_pressed function using Callable
	serverscene.visible = false
	self.connect("pressed", Callable(self, "_on_Button_pressed"))

# Function to handle the button press
func _on_Button_pressed():
	# Change the scene to the save screen
	var newserver = serverscene.get_node("Control")
	button.visible = false
	visible = false

