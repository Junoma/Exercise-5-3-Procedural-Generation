extends CharacterBody3D

@onready var nav_agent = $NavigationAgent3D

var SPEED = 3.0
const ATTACK_RANGE = 2.5
var health = 6

func _physics_process(_delta):
	var current_location = global_transform.origin
	var next_location = nav_agent.get_next_path_position()
	var new_velocity = (next_location - current_location).normalized() * SPEED
	velocity = velocity.move_toward(new_velocity,.25)
	move_and_slide()
	

func update_target_location(target_location):
	nav_agent.target_position = target_location


func _on_static_body_3d_body_part_hit(dam):
	health -= dam
	if health <= 0:
		queue_free()
