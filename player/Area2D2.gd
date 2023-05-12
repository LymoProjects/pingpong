extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.get_action_strength("player2Up")) :
		if (position.y < 0) :
			return;
			
		position.y -= 3;
	elif (Input.get_action_strength("player2Down")) :
		if (position.y > 648) :
			return;
			
		position.y += 3;

func _physics_process(delta):
	for ele in get_overlapping_areas():
		if (ele.is_in_group("userBall")) :
			ele.directOffset.x = -abs(ele.directOffset.x);
	
	pass
