extends KinematicBody2D

var vsp = 0
var speed = 4
var grav = 0.2

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.play("default")


func _process(delta):
	var go = Vector2(0,0)
	
	if vsp < speed:
		vsp += grav
		
	if (get_rotation() > -45):
		set_rotation(get_rotation() - deg2rad(-1) )
		
	if Input.is_action_pressed("ui_up"):
		vsp = -speed
		set_rotation(0)

	go.y = vsp
	
	if move_and_collide(go):
		get_tree().reload_current_scene()