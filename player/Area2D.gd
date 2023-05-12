extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.get_action_strength("player1Up")) :
		if (position.y < 0) :
			return;
		
		position.y -= 3;
	elif (Input.get_action_strength("player1Down")) :
		if (position.y > 648) :
			return;
		
		position.y += 3;
	
	pass

func _physics_process(delta):
	for ele in get_overlapping_areas():
		if (ele.is_in_group("userBall")) :
			ele.directOffset.x = abs(ele.directOffset.x);
	
	pass
