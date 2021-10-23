# Dev Log

## Click and Drag Codes
### 23 October 2021
The previous code will anchor the mouse, but never releas it. Codes below are triggered when mouse released
```GDScript
func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and not event.pressed:
			selected = false
```

### 22 October 2021
```GDScript

extends Sprite

var selected = false


func _on_Area2D_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
		selected = true
	pass # Replace with function body.
	
func _physics_process(delta):
	if selected:
		global_position = lerp(global_position, get_global_mouse_position(), 25*delta)
		
```
