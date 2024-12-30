extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_down() -> void:
	randomize()
	# create a random amount
	var randAmount : float = randf_range(100,GlobalData.dirtyCash * 0.75)
	
	#add random ammount
	GlobalData.clean_cash(randAmount)
