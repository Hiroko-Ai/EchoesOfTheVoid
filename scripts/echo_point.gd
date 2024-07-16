extends Area2D

signal echo_activated

var is_active = false

func _ready():
	add_to_group("echo_points")
	modulate.a = 0.5  # Make it semi-transparent when inactive

func activate():
	if not is_active:
		is_active = true
		modulate.a = 1.0  # Make it fully opaque when active
		emit_signal("echo_activated")

func _on_body_entered(body):
	if body.is_in_group("player"):
		activate()

