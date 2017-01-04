extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var lifetime

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	lifetime = 10
	set_fixed_process(true)
	pass

func _fixed_process(delta):
	lifetime -= delta
	if (lifetime < 0):
		queue_free()
	move_local_x(delta * 300)
