extends Node3D

@export var rotation_speed: float = 30.0  # Speed of the rotation
@export var min_angle: float = 45.0  # Minimum rotation angle (closed position)
@export var max_angle: float = 90.0  # Maximum rotation angle (fully open)

var direction: int = 1  # 1 = opening, -1 = closing

func _process(delta):
	# Rotate on the Z-axis (bloom effect)
	rotation_degrees.z += direction * rotation_speed * delta

	# Reverse direction when reaching limits
	if rotation_degrees.z >= max_angle:
		rotation_degrees.z = max_angle
		direction = -1  # Start closing
	elif rotation_degrees.z <= min_angle:
		rotation_degrees.z = min_angle
		direction = 1  # Start opening
