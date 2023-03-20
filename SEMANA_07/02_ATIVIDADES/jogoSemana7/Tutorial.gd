extends Node2D

#quando o botão "Voltar" pressionado, o jogo volta para a tela do Menu
func _on_Voltar_pressed():
	get_tree().change_scene("res://Menu.tscn")
