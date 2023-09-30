extends CanvasLayer

class_name UI

@onready var pontos_jogador = $%PontosJogador
@onready var pontos_inimigo = $%PontosInimigo

func _ready():
	pontos_jogador.text = "%d" % 0
	pontos_inimigo.text = "%d" % 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func update_pontos_inimigo(pontos: int):
	pontos_inimigo.text = "%d" % pontos
	
func update_pontos_jogador(pontos: int):
	pontos_jogador.text = "%d" % pontos
