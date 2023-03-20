extends Node


#quando a tecla "esc" pressionada, o jogo volta para a tela do menu e zera a pontuação
func _input(event):
	if event.is_action_pressed("home"):
		get_tree().change_scene("res://Menu.tscn")
		Global.scoreBranco = 0
		Global.scorePreto = 0 


#quando a bola passar do lado esquerdo da tela, é adicionado 1 ponto para o jogador branco (player2)
#a velocidade da bola volta ao padrão (600)
func _on_esquerda_body_entered(body):
	
	Global.scoreBranco += 1
	$bola.bolaSpeed = 600

	$bola.position = Vector2(640, randi()%720)

#quando a bola passar do lado direito da tela, é adicionado 1 ponto para o jogador preto (player1)
#a velocidade da bola volta ao padrão (600)
func _on_direita_body_entered(body):

	Global.scorePreto += 1

	$bola.position = Vector2(640, randi()%720)
	$bola.bolaSpeed = 600

#altera a pontuação visual na tela
func _process(delta):
	$scoreBranco.text = str(Global.scoreBranco)
	$scorePreto.text = str(Global.scorePreto)
	
	
