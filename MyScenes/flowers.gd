extends Node3D  

@export var rotation_speed: float = 60.0  # Speed of rotation in degrees per second
@export var can_spin: bool = true  # Checkbox to enable/disable spinning

func _process(delta):
	if can_spin:  # Only spin if the checkbox is checked
		rotation_degrees.y += rotation_speed * delta  # Rotates around Y-axis
