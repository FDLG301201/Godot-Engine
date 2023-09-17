extends CharacterBody2D

#const moveSpeed = 25
#const maxSpeed = 50

#const jumpHeight = -300
const up = Vector2(0, -1)
#const gravity = 15

@onready var sprite = $Sprite2D
@onready var animationPlayer = $AnimationPlayer	

var motion = Vector2()

const SPEED = 100.0
const JUMP_VELOCITY = -300.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	
#	motion.y += gravity

	if not is_on_floor():
		velocity.y += gravity * delta
	
	var friction = false
	
	if Input.is_action_pressed("ui_right"):
		sprite.flip_h = false
		animationPlayer.play("Walk")
		velocity.x = 1 * SPEED
#		motion.x = min(motion.x + moveSpeed, maxSpeed)
		
	elif Input.is_action_pressed("ui_left"):
		sprite.flip_h = true
		animationPlayer.play("Walk")
		velocity.x = -1 * SPEED
#		motion.x = max(motion.x - moveSpeed, -maxSpeed)

	elif Input.is_action_pressed("ui_down"):
		animationPlayer.play("Hold_down")
		velocity.x = 0
	
	else:
		animationPlayer.play("Idle")
		velocity.x = move_toward(velocity.x, 0, SPEED)
#		friction = true
		
		
	if is_on_floor():
		if Input.is_action_pressed("ui_accept"):
			animationPlayer.play("Jump")
			velocity.y = JUMP_VELOCITY
#			motion.y = jumpHeight
#
#		if friction == true:
#			motion.x = lerp(motion.x, 0 ,0.5)
#	else:
#		if friction == true:
#			motion.x = lerp(motion.x, 0 ,0.01)
			
			
			
#	motion = move_and_slide()
	
	move_and_slide()
	# Add the gravity.
#	if not is_on_floor():
#		velocity.y += gravity * delta

	# Handle Jump.
#	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
#		animationPlayer.play("Jump") 
#		velocity.y = JUMP_VELOCITY
		

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
#	var direction = Input.get_axis("ui_left", "ui_right")
#	if direction == 0:
#		sprite.flip_h = false
#
#	if direction == 1:
#		sprite.flip_h = false
#
#	if direction:
#		velocity.x = direction * SPEED
#		animationPlayer.play("Walk")
#	else:
#		velocity.x = move_toward(velocity.x, 0, SPEED)
#		animationPlayer.play("Idle")
#		sprite.flip_h = false

#	move_and_slide()
