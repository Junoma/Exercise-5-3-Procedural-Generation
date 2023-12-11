

#func _headbob(time) -> Vector3:
	#var pos = Vector3.ZERO
	#pos.y = sin(time * BOB_FREQ) * BOB_AMP
	#pos.x = cos(time * BOB_FREQ) * BOB_AMP
	#return pos

#@rpc("any_peer","call_remote","unreliable_ordered")
#func _set_position(p):
	#global_position = p

#@rpc("any_peer","call_remote","unreliable_ordered")
#func _set_rotation(r):
	#rotation.y = r

#@rpc("any_peer","call_remote","unreliable_ordered")
#func _die():
	#queue_free()



func die():
	get_tree().change_scene_to_file("res://Assets/end screen/death.tscn")
