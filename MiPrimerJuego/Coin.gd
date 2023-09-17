extends Area2D

@onready var animationPlayer = $AnimationPlayer
@onready var audioStreamPlayer = $AudioStreamPlayer2D

func _on_ready():
	animationPlayer.play("coin_girar")
	pass # Replace with function body.

func _on_body_entered(body):
	audioStreamPlayer.play()
	await audioStreamPlayer.finished
	queue_free()
	pass # Replace with function body.


