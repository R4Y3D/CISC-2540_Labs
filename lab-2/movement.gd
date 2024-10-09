extends CharacterBody2D

# Exported variable for character speed
@export var speed: float = 200

# Use inherited velocity, no need to redefine it

func _physics_process(delta: float) -> void:
	var direction: Vector2 = Vector2()

	# Respond to user input with conditional logic
	if Input.is_action_pressed("right"):
		direction.x += 1
	elif Input.is_action_pressed("left"):
		direction.x -= 1

	if Input.is_action_pressed("down"):
		direction.y += 1
	elif Input.is_action_pressed("up"):
		direction.y -= 1

	# Normalize the direction and apply speed
	if direction.length() > 0:
		direction = direction.normalized() * speed

	# Move the character using the built-in velocity
	velocity = direction
	move_and_slide()
