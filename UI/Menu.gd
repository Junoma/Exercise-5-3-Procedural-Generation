extends Control

func _on_Restart_pressed():				# if we restart, then unpause the game and the reload the scene
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Maze/Maze.tscn")

func _on_Quit_pressed():
	get_tree().quit()


#func _ready():
	#if Global.which_player != 0:
		#$Player.text = "Player " + str(Global.which_player)

