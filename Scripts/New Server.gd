extends Button
@onready var button = get_node("../Join Server")
var back_button
# Called when the node enters the scene tree for the first time.
func _ready():
	# Connect the button's pressed signal to the _on_Button_pressed function using Callable
	self.connect("pressed", Callable(self, "_on_Button_pressed"))

# Function to handle the button press
func _on_Button_pressed():
	# Change the scene to the save screen
	var serverscene = load("res://Scenes/Serverlist.tscn")
	var instance = serverscene.instantiate()
	add_child(instance)
	button.queue_free()
	queue_free()

