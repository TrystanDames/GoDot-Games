extends Node

const CAR = preload("res://Car/Car.tscn")

func _on_Timer_timeout():
	var car = CAR.instance()
	add_child(car)
