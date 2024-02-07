extends CharacterBody2D

var tiro = preload("res://tiro.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index==1 and event.pressed:
			for n in range(1,10):
				#print(event.position)
				var tr = tiro.instantiate()
				tr.global_position = global_position
				print(global_position)
				print(event.position)
				var dir = global_position.direction_to(event.position).angle()
				#var dir = rotation
				var offset = rad_to_deg(dir)
				var rnd  = randf_range(-10,10)
				offset += rnd
				dir = deg_to_rad(offset)
			
				var vec = Vector2(500,0).rotated(dir)
				tr.velocity = vec
				get_tree().get_root().add_child(tr)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
