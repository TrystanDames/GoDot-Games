extends KinematicBody2D

const speed = 200

func _process(delta):
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	move_and_slide(velocity.normalized() * speed)
	player_animation(velocity)

func player_animation(velocity):
	if velocity.y > 0:
		get_node("AnimatedSprite").play('walk_down')
	elif velocity.y < 0:
		get_node("AnimatedSprite").play('walk_up')
	elif velocity.x != 0:
		get_node("AnimatedSprite").play('walk_side')
		get_node("AnimatedSprite").flip_h = velocity.x > 0
	else:
		get_node("AnimatedSprite").stop()
		get_node("AnimatedSprite").frame = 0
