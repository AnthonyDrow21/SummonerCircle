extends Node3D

@onready var player = $Player

func _physics_process(delta: float) -> void:
	# collect all summons and set the target position
	get_tree().call_group("Summon", "updateTargetLocation", player.global_transform.origin)
