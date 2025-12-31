@tool

extends TileMapLayer

func _on_child_order_changed() -> void:
	update_child_index()

@export_tool_button("Update Child Index", "Callable") var action = update_child_index
func update_child_index():
	var children = get_children()
	var i = 0
	for child in children:
		child.get_child(1).text = str(i)
		i += 1
