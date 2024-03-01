extends RigidBody2D

export var sceneName = "LoseScreen"

func _on_Coin_body_entered(body):
	if body.get_name() == "Player":
		self.queue_free()
