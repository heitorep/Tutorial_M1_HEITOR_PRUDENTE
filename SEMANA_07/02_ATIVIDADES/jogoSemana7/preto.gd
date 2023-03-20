extends KinematicBody2D

#define a velociade do jogador preto (player 1)
var speed = 400

#define o vetor da velocidade e quando as teclas "W" e "A" precionadas ele se move para cima e baixo respectivamente
func _physics_process(delta):
	var velocity = Vector2(0,0)
	if Input.is_action_pressed("subir"):
		velocity.y -= 1
	if Input.is_action_pressed("descer"):
		velocity.y += 1
		
	move_and_slide(velocity*speed)

	
