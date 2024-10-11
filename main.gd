extends Node2D
@export var pole:PackedScene
@onready var bird: RigidBody2D = $bird

@export var max_y=100
@export var min_y=-100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	spawn()
func spawn()->void:
	
		var new_pole=pole.instantiate()
		new_pole.global_position.x=bird.global_position.x+400
		new_pole.global_position.x+=500
		new_pole.global_position.y=randf_range(min_y,max_y)
		add_child(new_pole)
		
		
