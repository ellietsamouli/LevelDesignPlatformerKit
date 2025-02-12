extends Node3D  # This ensures the script runs on a 3D object

@export var rotation_speed: float = 60.0  # Speed of rotation in degrees per second

func _process(delta):
	rotation_degrees.y += rotation_speed * delta  # Rotates around Y-axis
