extends Area2D

var car_speed = 250

func _process(delta):
	position.x -= car_speed * delta
	
