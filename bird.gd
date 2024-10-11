extends RigidBody2D

var impulse =Vector2(0,-20)# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("up"):
		linear_velocity.y+=-20
		
	


func _on_body_entered(body: Node) -> void:
	print(body)
		
