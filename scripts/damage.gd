extends Area2D

@onready var audio_hurt = $Hurt
@onready var timer = $Timer
@onready var audio_player = $AudioStreamPlayer2D


var lives = 3

func del_lives():
	lives -= 1
	print("You have " + str(lives) + " left")

func _on_body_entered(body):
	if lives <= 1:
		Engine.time_scale = 0.5
		body.get_node("CollisionShape2D").queue_free()
		timer.start()
		audio_player.play()
	else:
		print("haha i hit you!")
		del_lives()
		audio_hurt.play()
		body.get_node("AnimatedSprite2D").play
		
	
func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
