extends TextureRect


func _ready() -> void:
	$"1/EyesClosed".show()
	$"1/Alarm".play()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func wait(seconds: float) -> void:
	await get_tree().create_timer(seconds).timeout


func _on_alarm_finished() -> void:
	await wait(2.0)
	$"1/EyesClosed".hide()
	$Wind.play()


func _on_texture_button_pressed() -> void:
	get_tree().change_scene_to_file("uid://dopho7u64ppd3")
