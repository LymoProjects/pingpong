extends Area2D

var defaultPosition :Vector2;

var directOffset :Vector2 = Vector2(2, -2);

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("userBall");
	
	defaultPosition = position;
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += directOffset;
	
	pass

func resetPosition():
	position = defaultPosition;
