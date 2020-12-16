extends Node

class_name ObjectLayer
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var pain_amount : int
export var force_minimum : int
export var force_required_to_penetrate : int
export var force_for_crushing_damage : int
export var slash_coefficcient := 0.0
export var spike_coefficient := 0.0
export var crush_coefficient := 0.0 
export var critical_points := Array()

signal pain(amount)
signal critical_damage(critical_damage_info)
signal penetrated()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass 

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func push_new_critical_zone(critical_zone : Vector2) -> void:
	critical_points.append(critical_zone)

func set_form(points : PoolVector2Array)->void:
	$OwnArea/CollisionPolygon.set_polygon(points)

func transform(modifier : Vector2)->void:
	var tf = Transform2D(0.0, $OwnArea.position)
	$OwnArea.transform = tf.scaled(modifier)

func relocate(new_post :Vector2)->void:
	$OwnArea.position = new_post
		
func _on_struck(weapon):
	pass
