extends Node2D

var pontos_jogador = 0
var pontos_inimigo = 0

@onready var inimigo = $ColunaInimiga
@onready var jogador = $Coluna
@onready var bola = $Bola as Bola
@onready var ui = $UI as UI

func _on_inimigo_marcou():
	pontos_inimigo += 1
	ui.update_pontos_inimigo(pontos_inimigo)
	reset_game_state()

func _on_jogador_marcou():
	pontos_jogador += 1
	ui.update_pontos_jogador(pontos_jogador)
	reset_game_state()

func reset_game_state():
	inimigo.global_position.y = 0
	inimigo.linear_velocity = Vector2.ZERO
	jogador.global_position.y = 0
	jogador.linear_velocity = Vector2.ZERO
	bola.position = Vector2.ZERO
	bola.velocity = Vector2.ZERO
	bola.start_bola()
