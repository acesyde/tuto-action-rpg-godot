extends Node2D

const GrassEffectScene = preload("res://Effects/GrassEffect.tscn")

func create_grass_effect():
	var grassEffect = GrassEffectScene.instance()
	get_parent().add_child(grassEffect)
	grassEffect.global_position = global_position

func _on_Hurtbox_area_entered(_area):
	create_grass_effect()
	queue_free() # Replace with function body.
