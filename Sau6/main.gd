extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var pepperscene = load("res://pepper.tscn")
func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	if (Input.is_action_pressed("throw")):
		get_node("game/gnuarms").set_rot(PI)
	print("TESTEST")