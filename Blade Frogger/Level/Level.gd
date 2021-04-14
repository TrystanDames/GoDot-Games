extends Node

const CAR = preload("res://Car/Car.tscn")

func _on_Timer_timeout():
	var car = CAR.instance()
	car.position = get_node("CarStart1").position
	add_child(car)
