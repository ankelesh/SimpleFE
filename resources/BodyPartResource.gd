extends Resource

class_name BodyPartResource

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var sprite_path : String
var polygon_points : PoolVector2Array
var critical_points : PoolVector2Array
var critical_polygons : Array
var part_name : String

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func serialize() -> String:
	var stats : Dictionary
	stats["sprite_path"]= sprite_path
	stats["polygon_points"] = polygon_points
	stats["critical_points"]= critical_points
	stats["part_name"] = part_name
	stats["critical_polygons"] = critical_polygons
	return to_json(stats)

func deserialize(jsondata : String)-> void:
	var stats  = parse_json(jsondata)
	sprite_path = stats["sprite_path"]
	polygon_points = stats["polygon_points"]
	critical_points = stats["critical_points"]
	part_name = stats["part_name"]
	critical_polygons = stats["critical_polygons"]
		
func add_critical_point(pnt : Vector2)	->void:
	critical_points.append(pnt)
	
func add_polygon_point(pnt : Vector2) -> void:
	polygon_points.append(pnt)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
