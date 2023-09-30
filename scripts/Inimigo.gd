extends RigidBody2D

@export var velocidade_inimigo = 35000
@export var bola: Bola

func _physics_process(delta):
	
	var direction = (bola.position - position).normalized()
	linear_velocity.y = direction.y * velocidade_inimigo * delta
