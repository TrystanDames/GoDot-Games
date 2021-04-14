extends Area2D

var car_speed = 250
var direction = 1

func _ready():
	if position.x < 0:
		direction = -1
	else:
		direction = 1

func _process(delta):
	position.x -= car_speed * delta * direction

func _on_Car_body_entered(body):
	get_tree().change_scene("res://GameScreen/GameScreen.tscn")
