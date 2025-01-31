extends CharacterBody2D

@export var speed = 20
@export var target: Node2D
@onready var nav_agent := $NavigationAgent2D as NavigationAgent2D

func _physics_process(_delta: float):
	var direction = to_local(nav_agent.get_next_path_position()).normalized()
	print("direction:" , direction)
	velocity = direction * speed
	print("velocity:" , velocity)
	move_and_slide()
	

func make_path():
	print("looking for path")
	nav_agent.target_position = target.global_position
	print("found path at player coords:" , target.global_position)

func _on_timer_timeout():
	make_path()
