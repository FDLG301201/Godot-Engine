extends CanvasLayer


#@onready var player: Node2D
#@onready var score_label = $ScoreLabel
## Called when the node enters the scene tree for the first time.
#func _ready():
#	player = get_node("../CharacterBody2D")
#	var hola = self.get_viewport()
#	#self.set_custom_viewport()
#	print(hola)
#	pass # Replace with function body.
#
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	if player:
#		var player_camera = player.get_node("Camera2D")
#
#		self.follow_viewport_enabled = true
		
#		if player_camera:
#			var siguiendo = self.set_custom_viewport(player_camera)
#
#			if siguiento != null:
#				print("OK")
#			print(self.get_custom_viewport())
#			#var camera_global_position = player_camera.global_position
#			#var canvas_position = self.get_global_transform().xform_inv(camera_global_position)
#
#			# Ajusta la posición del puntaje en relación con la posición de la cámara en la pantalla
#			#score_label.rect_position = canvas_position + Vector2(10, 10)  # Ajusta según necesites
#
#
#	#self.follow_viewport_enabled = true
##	var camera_transform = camera.global_transform  # Transformación global de la cámara
##	var canvas_position = camera_transform.origin - get_viewport().size / 2  # Posición en el CanvasLayer
##	self.rect_min_size = get_viewport_rect().size  # Ajusta el tamaño del CanvasLayer al tamaño de la ventana
##	self.rect_position = canvas_position  # Actualiza la posición del CanvasLayer
##
##	score_label.rect_position = Vector2(10,10)
##
	pass
