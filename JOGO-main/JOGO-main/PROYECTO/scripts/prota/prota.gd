extends CharacterBody2D
@onready var prota: AnimatedSprite2D = $AnimatedSprite2D

const SPEED = 200.0
const JUMP_VELOCITY = -400.0

func _ready() -> void:
	prota.play("parado")
	
	
func _physics_process(delta: float) -> void:
	
	var direction := Input.get_axis("ui_left", "ui_right")
	
	if direction:
		velocity.x = direction * SPEED
		
		if direction==1:
			prota.flip_h=false
			prota.play("correr")
		
		if direction==-1:
			prota.flip_h=true
			prota.play("correr")
		
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		prota.play("parado")
		
	move_and_slide()

func _input(event):
	if event is InputEventKey and event.is_pressed:
		if event.keycode==KEY_SPACE:
			prota.play("dash")
