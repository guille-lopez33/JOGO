extends CharacterBody2D
@onready var prota: AnimatedSprite2D = $AnimatedSprite2D

const SPEED = 200.0
const JUMP_VELOCITY = -400.0

func _ready() -> void:
	prota.play("parado")
	
	
	
	
	




func _physics_process(delta: float) -> void:
	

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
		
		if direction==1:
			prota.flip_h=false
		
		if direction==-1:
			prota.flip_h=true
		
		
		
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
