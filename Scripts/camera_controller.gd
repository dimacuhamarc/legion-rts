extends Camera2D

@export var speed: float = 300 
@export var zoom_speed: float = 0.1 
@export var min_zoom: float = 0.5
@export var max_zoom: float = 2.0
@export var edge_scroll_margin: float = 50  

func _process(delta):
	var direction = Vector2.ZERO


	var mouse_pos = get_viewport().get_mouse_position()
	var viewport_size = get_viewport().get_visible_rect().size

	if mouse_pos.x < edge_scroll_margin:
		direction.x -= 1
	elif mouse_pos.x > viewport_size.x - edge_scroll_margin:
		direction.x += 1
	if mouse_pos.y < edge_scroll_margin:
		direction.y -= 1
	elif mouse_pos.y > viewport_size.y - edge_scroll_margin:
		direction.y += 1

	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1

	if direction != Vector2.ZERO:
		position += direction.normalized() * (speed * 1.5) * delta

	if Input.is_action_just_pressed("zoom_in"):
		zoom += Vector2(zoom_speed, zoom_speed)
	if Input.is_action_just_pressed("zoom_out"):
		zoom -= Vector2(zoom_speed, zoom_speed)

	zoom.x = clamp(zoom.x, min_zoom, max_zoom)
	zoom.y = clamp(zoom.y, min_zoom, max_zoom)
