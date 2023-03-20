extends KinematicBody2D

#define a velociade do jogador branco (player 2)
var speed = 400

#define o vetor da velocidade e quando as teclas de seta para cima e baixo precionadas ele se move nessas direções
func _physics_process(delta):
	var velocity = Vector2(0,0)
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
		 
	move_and_slide(velocity*speed)
