tool
extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var dots : PoolVector2Array



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Path_text_entered(new_text):
	dots = PoolVector2Array()
	$layout/TextureRect.texture = load(new_text)
	$layout/TextureRect/Polygon2D.clear_bones()
	pass # Replace with function body.


func _on_TextureRect_left_clicked(where : Vector2):
	if (where < $layout/TextureRect.rect_size):
		dots.push_back(where)
		$layout/TextureRect/Polygon2D.polygon = dots
		$layout/TextureRect.update()


func _on_TextureRect_right_clicked(where):
	dots.remove(dots.size() -1)
	$layout/TextureRect/Polygon2D.polygon = dots
	$layout/TextureRect.update()
	
