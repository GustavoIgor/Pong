extends RigidBody2D

@export var velocidade = 500

func _physics_process(delta):
	var movimento = Vector2.ZERO
	
	if Input.is_action_pressed("Cima"):
		movimento = Vector2.UP
		
	elif Input.is_action_pressed("Baixo"):
		movimento = Vector2.DOWN
	
	linear_velocity = movimento * velocidade
		
