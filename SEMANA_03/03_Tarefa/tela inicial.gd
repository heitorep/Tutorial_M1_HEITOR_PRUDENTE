extends Node2D

var dados :Array = []
var valor
var lista
var texto


func _on_Button_pressed():
	lista = [1, 2, 3, 4, 5]
	$ColorRect2/lista.text = String(lista)


func _on_Button2_pressed():
	dados.push_back($dados.text)
	$ColorRect/RichTextLabel.text = String(dados)
	


func _on_Button3_pressed():
	texto = $Label5.text
	$ColorRect3/texto.text = String(texto)
	

func _on_Button4_pressed():
	valor = float($LineEdit.text)
	$ColorRect4/value.text = str(valor)
