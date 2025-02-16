extends Node3D  

@export var roll_speed: float = 60.0  # Speed of the roll, editable per instance

func _process(delta):
	rotate(Vector3(1, 0, 0), deg_to_rad(roll_speed * delta)) 
