extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	position+=Vector2(-2,0)
	
	


func _on_timer_timeout() -> void:
	queue_free()
	


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("score")


func _on_die_body_entered(body: Node2D) -> void:
	print("die")
	body.set_process(false)
	if body.is_processing()==false:
		print("dies")
