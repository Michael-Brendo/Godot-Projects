extends Node2D


func _ready():
	pass

func _process(delta):
	$Interface/ProgressBar.value = $Nave.combustivel

func _on_Nave_body_entered(body):
	if body.name == "Chegada":
		$Timer.start()

	elif body.name == "Obstaculo":
		$Nave.explodir()
		$Timer.start()


func _on_Nave_body_exited(body):
	if body.name == "Chegada":
		$Timer.stop()

func _on_Timer_timeout():
	get_tree().reload_current_scene()
