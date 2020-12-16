tool
extends EditorPlugin

var plugin
func _enter_tree():
	plugin = preload("res://addons/BodyPartResourceEditor/BPREditorPlugin.gd").new()
	add_inspector_plugin(plugin)
	pass


func _exit_tree():
	remove_inspector_plugin(plugin)
	pass
