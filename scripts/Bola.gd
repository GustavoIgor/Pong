extends CharacterBody2D

class_name Bola

@export var velocidade_inicial = 20
# 2% mais rápido a cada toque.
@export var multiplicador_velocidade = 1.05

var velocidade_bola = velocidade_inicial

func _ready():
	start_bola()

func _physics_process(delta):
	var colisao = move_and_collide(velocity * velocidade_bola * delta)
	
	if(colisao):
		$Bate.play()
		velocity = velocity.bounce(colisao.get_normal()) * multiplicador_velocidade

func start_bola():
	randomize()
	velocity.x = [-1, 1][randi() % 2] * velocidade_inicial
	velocity.y = [-0.8, 0.8][randi() % 2] * velocidade_inicial
