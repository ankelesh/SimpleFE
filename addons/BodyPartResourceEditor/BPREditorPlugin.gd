tool
extends EditorInspectorPlugin



func can_handle(object):
	if object is BodyPartResource:
		return true
	else:
		return false

func _init():
	print("__created BPREditor")
	
func parse_category(object, category):
	print("__parsing c: " + str(category) + " o " + str(object))
	if object is BodyPartResource:
		print("BPR__category: " + str(category))
		return true
	return false
	
	
func parse_property(object, type, path, hint, hint_text, usage):
	print("my type" + str(type))
	print("my class" + str(object.get_class()))
	print("my usage" + str(usage))
	if !object:
		return false
	if object is BodyPartResource:
		print ("BODYPART!!!!!")
		add_custom_control(BPREditor.new())
		return true
	
	return false

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
