extends TextureRect


func _ready() -> void:
	$"2/RichTextLabel".text = ""
	if !Global.key:
		$"1/EyesClosed".show()
		await wait(2.0)
		$"1/Alarm".play()
	else:
		$Music.play()
		

func _process(delta: float) -> void:
	pass

func wait(seconds: float) -> void:
	await get_tree().create_timer(seconds).timeout

func _on_alarm_finished() -> void:
	await wait(2.0)
	$"1/EyesClosed".hide()
	Global.key = true
	$Music.play()


func _on_texture_button_pressed() -> void:
	get_tree().change_scene_to_file("uid://1pqvj87kweg1")


func _on_books_pressed() -> void:
	$"2/RichTextLabel".text = "these are books"
	await wait(2.0)
	
	$"2/RichTextLabel".text = ""
