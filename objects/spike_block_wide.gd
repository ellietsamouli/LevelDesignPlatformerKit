extends Node3D

@export var roll_speed: float = 60.0  # Speed of the roll (adjust as needed)

func _process(delta):
	# Rotate around the X-axis (like a wheel rolling forward)
	rotate(Vector3(1, 0, 0), deg_to_rad(roll_speed * delta))  # Rotating around the X-axis
