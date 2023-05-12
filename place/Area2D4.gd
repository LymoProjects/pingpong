extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _physics_process(delta):
	for ele in get_overlapping_areas():
		if (ele.is_in_group("userBall")) :
			ele.directOffset.y = abs(ele.directOffset.y);
	
	pass
