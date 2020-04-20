extends RigidBody2D

var forca_propulsao = Vector2(0, -300)
var forca_virar = 400
var combustivel = 100
var consumo = 10

func _ready():
	pass

func explodir() -> void:
	set_process(false)
	
	$CollisionPolygon2D.queue_free()
	$Polygon2D.hide()

func _process(delta):
	if Input.is_action_pressed("ui_up") and combustivel > 0:
		apply_central_impulse(forca_propulsao.rotated(rotation)
		 * delta)
		combustivel = combustivel - consumo * delta
	
	if Input.is_action_pressed("ui_right"):
		apply_torque_impulse(forca_virar * delta)
		
	if Input.is_action_pressed("ui_left"):
		apply_torque_impulse(- forca_virar * delta)
		pass
