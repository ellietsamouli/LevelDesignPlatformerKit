extends Node3D

@export var rotation_speed: float = 30.0  # Speed of rotation in degrees per second
@export var min_angle: float = 45.0  # Minimum rotation angle (closed position)
@export var max_angle: float = 90.0  # Maximum rotation angle (fully open)
@export var can_spin: bool = true  # Checkbox to enable/disable spinning

var direction: int = 1  # 1 = opening, -1 = closing

func _process(delta):
	if can_spin:  # Only spin if enabled
		rotation_degrees.y += rotation_speed * delta  # Spins around Y-axis

	# Blooming effect (opening and closing)
	rotation_degrees.z += direction * rotation_speed * delta

	# Reverse direction when reaching limits
	if rotation_degrees.z >= max_angle:
		rotation_degrees.z = max_angle
		direction = -1  # Start closing
	elif rotation_degrees.z <= min_angle:
		rotation_degrees.z = min_angle
		direction = 1  # Start opening
