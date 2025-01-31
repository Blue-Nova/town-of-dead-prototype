extends CharacterBody2D

@export var movement_speed : float = 500
@export var accel : int = 10

var character_direction : Vector2

@export var camera: Camera2D

func _physics_process(delta):
	
	character_direction.x = Input.get_axis("move_left","move_right")
	character_direction.y = Input.get_axis("move_up","move_down")
	character_direction.normalized()
	if character_direction:
		character_direction = character_direction * movement_speed
		velocity = character_direction.rotated(self.rotation)

	velocity = character_direction.rotated(self.rotation)
	
	move_and_slide()

func _input(event: InputEvent):
	if event is InputEventMouseMotion:
		rotation += deg_to_rad(event.relative.x) * 0.1
