
extends Node2D

var teste = false
var valor = 0
#variável 'número' deve ser renomeada para 'numero' para evitar caracteres especiais.
var numero = 0
#criar uma variável para lista
var lista = []
var nome = ""
#criação da variável auxiliar para leitura 
var ler 


func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	#split é usado para separar o nome e o numero
	ler = str($LineEdit.text).split(" ")
	numero = int(ler[1])
	nome = str(ler[0])
	$LineEdit.text = nome


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
	#renomear a variável 'Numero' para numero
		numero+=i
	#renomear a variável 'Numero' para numero
		lista.append(numero)
	#adicionar 'str' pois Label.text é um texto
	$Label.text = str(numero)


func _on_Button3_pressed():
		#Mudando o nome do usuário de acordo com os dados da lista
		#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	#mudança do escopo das varoáveis 'i' e 'cont'	
	var i=0
	var cont=0
	#definir limite para o laço de repetição
	while(i < len(lista)):
		if(lista[i]%2==1):
	#atribuição de cont para o valor 1 
			cont=1
	#retirar a atribuição de 'cont != 0' pois consideraria todos os números diferentes de 0
		if(cont == 1):
	#evidencia o texto que aparece na Label 2
			 $Label2.text = nome + "baldo"
	#adiciona 1 no primeiro número da lista
		i += 1
		
