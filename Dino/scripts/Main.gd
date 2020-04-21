extends Node

var velocidade = Vector2(-500, 0)
var velocidade_inicial = velocidade

func _ready():
	pass

func _process(delta):
	velocidade.x -= delta/5
