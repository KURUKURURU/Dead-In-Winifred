extends ColorRect


func _on_mouse_entered():
	if Global.vacuum and Input.is_action_pressed("click"):
		Global.clean_score = Global.clean_score + 1
		hide()

func _process(delta: float) -> void:
	if Global.clean_score == 6:
		hide()
