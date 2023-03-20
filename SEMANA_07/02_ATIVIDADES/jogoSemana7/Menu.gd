extends Node2D

#o tema escolhido foi "Dualidade" e o jogo aborda essa temática dentro da cultura chinesa, representada pelo Yin Yang.
#de acordo com a Wikipédia, "Yin e Yang são conceitos do taoismo que expõem a dualidade de tudo que existe no universo."
#"Descrevem as duas forças fundamentais opostas e complementares que se encontram em todas as coisas"
#por isso, há um samurai branco e um preto (cores opostas) que se enfrentam em uma batalha de Pong, onde a bola é o próprio Yin Yang.


#quando a tecla "esc" pressionada na tela do menu, o jogo fecha
func _input(event):
	if event.is_action_pressed("home"):
		get_tree().quit()

#quando o botão "Start" do Menu pressionado, iniciar o jogo 
func _on_Start_pressed():
	get_tree().change_scene("res://level.tscn")

#quando o botão "Tutorial" do Menu pressionado, abrir a tela do tutorial
func _on_Tutorial_pressed():
	get_tree().change_scene("res://Tutorial.tscn")

#quando o botão "Sair" do Menu pressionado, fechar o jogo
func _on_Sair_pressed():
	get_tree().quit()
