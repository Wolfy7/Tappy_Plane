extends KinematicBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	move_and_collide(Vector2(-5,0))
	