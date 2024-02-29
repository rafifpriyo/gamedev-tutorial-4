extends RigidBody2D

export var sceneName = "LoseScreen"

func _on_ToxicFish_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene(str("res://scenes/" + sceneName + ".tscn"))
	else:
		self.queue_free()
