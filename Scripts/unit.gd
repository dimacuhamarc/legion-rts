extends CharacterBody2D

@export var speed: float = 100  # Movement speed
var target_position: Vector2  # Where the unit will move
var tilemap  # Add this variable at the class level

func _ready():
	target_position = position  # Default target is the current position
	tilemap = get_node("/root/Main/TileMap")  # Store the reference when the node is ready

func _process(_delta):
	# Move towards the target position
	var direction = (target_position - position).normalized()
	if position.distance_to(target_position) > 2:
		velocity = direction * speed
		move_and_slide()
	else:
		velocity = Vector2.ZERO  # Stop moving

func set_target(pos: Vector2):
	# Convert screen position to world position
	var camera = get_node("/root/Main/Camera2D")
	var world_pos = (pos + camera.position) - get_viewport_rect().size / 2
	world_pos = world_pos / camera.zoom
	
	# Convert world position to tile coordinates
	var tile_pos = tilemap.local_to_map(world_pos)
	
	# Check if the tile exists
	if tilemap.get_cell_source_id(0, tile_pos) != -1:
		# Convert tile coordinates back to world coordinates
		target_position = tilemap.map_to_local(tile_pos)
	else:
		# Keep the current target if the new position is invalid
		target_position = target_position
