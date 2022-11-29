extends Spatial


func _ready():
	$AnimatedSprite3D.play()
	$AnimatedSprite3D/Particles.emitting = true

func _physics_process(_delta):
	if not $AnimatedSprite3D.playing and not $Particles.emitting:
		queue_free()
