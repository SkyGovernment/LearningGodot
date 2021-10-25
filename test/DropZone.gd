extends Position2D

func _draw():
	draw_circle(Vector2.ZERO, 75, Color.rebeccapurple)

func select():
	for child in get_tree().get_nodes_in_group("Zone"):
		child.deselect()
	modulate = Color.webmaroon
	
func deselect():
	modulate = Color.antiquewhite
