extends TextureRect


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal left_clicked(where)
signal right_clicked(where)
func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT:
			emit_signal("left_clicked",make_input_local(event).position)
		elif event.button_index == BUTTON_RIGHT:
			emit_signal("right_clicked", make_input_local(event).position)
		


	

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
