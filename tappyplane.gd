extends Node

var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	var rocks = load("res://rocks.tscn")
	var rock = rocks.instance()
	add_child(rock)		
	rock.set_position(Vector2(1210, rand_range(-100,0)))
	score += 1
	
