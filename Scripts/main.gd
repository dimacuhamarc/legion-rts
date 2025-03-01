extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _unhandled_input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			var clicked_position = event.position  # Get click position
			print(clicked_position)
			var unit = get_node_or_null("Unit")  # Find the unit (assuming 1 unit for now)
			
			if unit:
					unit.set_target(clicked_position)  # Move unit to clicked position
