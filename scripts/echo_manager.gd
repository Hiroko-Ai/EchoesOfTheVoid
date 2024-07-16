extends Node

var active_echoes = 0

func _ready():
	for echo_point in get_tree().get_nodes_in_group("echo_points"):
		echo_point.connect("echo_activated", _on_echo_activated)

func _on_echo_activated():
	active_echoes += 1
	print("Active echoes: ", active_echoes)
	# Here you can add logic to trigger events based on the number of active echoes
