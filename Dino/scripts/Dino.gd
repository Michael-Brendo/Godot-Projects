extends Area2D

var chao = Vector2(90, 657)

func _ready():
	pass

func _physics_process(delta):
	if get_position().y > chao.y :
		set_position(chao)
