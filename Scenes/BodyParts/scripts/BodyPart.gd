extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export(Resource) var bodypart_parameters
# Called when the node enters the scene tree for the first time.
func _ready():
	set_scape_parameters(bodypart_parameters)
	var mod = Vector2(2,2)
	adapt_size(mod)
	position = Vector2(300,300)
	$TopLayer.relocate(position)
	$MiddleLayer.relocate(position)
	$BottomLayer.relocate(position)
	pass # Replace with function body.



func set_scape_parameters(params : BodyPartResource) -> void:
	$Sprite.texture = ImageTexture.new()
	$Sprite.texture.load(params.sprite_path)
	$TopLayer.set_form(params.polygon_points)
	$MiddleLayer.set_form(params.polygon_points)
	$BottomLayer.set_form(params.polygon_points)
	update()

func adapt_size(modifier : Vector2) -> void:
	transform = transform.scaled(modifier)
	$TopLayer.transform(modifier)
	$MiddleLayer.transform(modifier)
	$BottomLayer.transform(modifier)
	update()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
