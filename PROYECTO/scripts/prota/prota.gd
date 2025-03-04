extends CharacterBody2D
@onready var prota: AnimatedSprite2D = $AnimatedSprite2D

const SPEED = 300
const JUMP_VELOCITY = -400.0

var move_speed:=125
var attack_damage:=50
var is_dash:=false
 
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

func _input(event: InputEvent)-> void:
	if event is InputEventKey and event.is_pressed:
		if event.keycode==KEY_SPACE:
			if event.pressed==true:
				dash()        


func dash():
	const SPEED = 300
	prota.play("dash")
	is_dash=true
	
