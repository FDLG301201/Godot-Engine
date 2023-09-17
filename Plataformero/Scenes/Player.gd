extends CharacterBody2D

@onready var animationPlayer = $AnimationPlayer
@onready var sprite = $Sprite2D

var speed := 120
var direccion := 0.0
var jump_height = 250
const gravity = 9


func _physics_process(delta):
	#movilidad del personaje
	direccion = Input.get_axis("ui_left", "ui_right")
	velocity.x = direccion * speed
	
	#animaciones de movimiento
	if direccion == 0:
		animationPlayer.play("Idle")
	else:
		animationPlayer.play("Walk")
		
	#Cambiar la direccion del personaje
	if direccion < 0:
		sprite.flip_h = true
	elif direccion > 0:
		sprite.flip_h = false
	
	#Boton de salto
	if is_on_floor() and Input.is_action_just_pressed("ui_up"):
		velocity.y -= jump_height
	
	#Animaciones de salto
	if velocity.y < 0:
		animationPlayer.play("Jump")
	elif  velocity.y > 0:
		animationPlayer.play("Fall")
	
	#Agregar Gravedad
	if !is_on_floor():
		velocity.y += gravity
		
		
	move_and_slide() 


