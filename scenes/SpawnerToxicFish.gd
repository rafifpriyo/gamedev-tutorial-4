extends Node2D

export (PackedScene) var obstacle
export var x_range = 1500
export var delay_spawn = 0.1

func _ready():
	repeat()

func spawn():
	var spawned = obstacle.instance()
	get_parent().add_child(spawned)

	var spawn_pos = global_position
	spawn_pos.x = spawn_pos.x + rand_range(-1 * x_range, x_range)

	spawned.global_position = spawn_pos

func repeat():
	spawn()
	yield(get_tree().create_timer(delay_spawn), "timeout")
	repeat()
