extends Node3D

@export var roll_speed: float = 60.0  # Speed of the roll (adjust as needed)

func _process(delta):
	# Rotate around the Z-axis (like a wheel rotating)
	rotate(Vector3(0, 0, 1), deg_to_rad(roll_speed * delta))  # Rotating around the Z-axis
