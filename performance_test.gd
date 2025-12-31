extends Node2D

var test_scene = load("res://basic_block.tscn")
var cell_size: Vector2i = Vector2(64, 64)

func _ready() -> void:
	build(500)

func build(size: int):
	var cur_pos: Vector2 = Vector2(0, 0)
	for n in range(size):
		cur_pos.x += cell_size.x
		cur_pos.y = 0
		for m in range(size):
			cur_pos.y += cell_size.y
			var new_scene = test_scene.instantiate()
			add_child(new_scene)
			new_scene.position = cur_pos
