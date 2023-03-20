extends KinematicBody2D

#define a volocidade padrão da bola e a direção do vetor da velocidade
var bolaSpeed = 600
var velocity = Vector2(0,0)

#randomiza a direção que a bola começa a se mover
func _ready():
	randomize()
	velocity.x = [-1, 1][randi() % 2]
	velocity.y = [-0.8, 0.8][randi() % 2]

#define que quando a bola colidir com algum objeto, seu sentido se inverterá, tendo como base a normal daquela superfície
func _physics_process(delta):
	var collision_object = move_and_collide(velocity*bolaSpeed*delta)
	if collision_object:
		velocity = velocity.bounce(collision_object.normal)

#aumenta a velocidade da bola em 10 quando colifir com alguma superfície
		bolaSpeed += 10
		
	



	
	
