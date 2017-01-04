extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var spritePath
var texture
var randomNb
var lifetime

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	lifetime = 10
	randomize()
	randomNb = randi()%4
	if (randomNb == 0):
		spritePath = "res://sprites/cono1.png"
	if (randomNb == 1):
		spritePath = "res://sprites/cono2.png"
	if (randomNb == 2):
		spritePath = "res://sprites/cono3.png"
	if (randomNb == 3):
		spritePath = "res://sprites/cono4.png"
	texture = load(spritePath)
	get_node("Sprite").set_texture(texture)
	set_fixed_process(true)
	pass

func _fixed_process(delta):
	lifetime -= delta
	if (lifetime < 0):
		queue_free()
	move_local_x(- delta * 300)
