extends Node

const CAR = preload("res://Car/Car.tscn")

func _ready():
	$Player.position = $PlayerStartPos.position

func car_spawn(start_pos):
	var car = CAR.instance()
	var car_start_node_name = "StartPositions/CarStart" + str(start_pos)
	car.position = get_node(car_start_node_name).position
	add_child(car)



func _on_Timer1_timeout(): car_spawn(1)


func _on_Timer2_timeout(): car_spawn(2)


func _on_Timer3_timeout(): car_spawn(3)


func _on_Timer4_timeout(): car_spawn(4)


func _on_Timer5_timeout(): car_spawn(5)
