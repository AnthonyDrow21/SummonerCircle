extends CharacterBody3D

@onready var nav_agent = $NavigationAgent3D
@export var speed = 3.0

func _physics_process(delta: float) -> void:
	# Get the current location in world space.
	var currentLocation = global_transform.origin
	var nextLocation = nav_agent.get_next_path_position()
	var newVelocity = (nextLocation - currentLocation).normalized() * speed
	
	velocity = newVelocity
	move_and_slide()

func updateTargetLocation(targetLocation):
	nav_agent.target_position = targetLocation
