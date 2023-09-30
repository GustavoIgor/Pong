extends Area2D

signal marcou

func _on_body_entered(body):
	$Marcou.play()
	if body is Bola:
		marcou.emit()
