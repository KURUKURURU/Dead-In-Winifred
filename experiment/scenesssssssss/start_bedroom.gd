extends TextureRect
@onready var vacuum_audio = AudioMusic.get_node("vacuum_audio")

func _ready() -> void:
	$"2/vacuum_handle".hide()
	vacuum_audio.stop()
	$"2/RichTextLabel".text = ""
	if !Global.key:
		$"1/EyesClosed".show()
		await wait(2.0)
		$"1/Alarm".play()
	else:
		$Music.play()
		

func _process(delta: float) -> void:
	if Global.vacuum:
		if Input.is_action_pressed("click"):
			if !vacuum_audio.playing:
				vacuum_audio.play()
			$"2/vacuum_handle".show()
			
		if Input.is_action_just_released("click"):
			$"2/vacuum_handle".hide()
			vacuum_audio.stop()
	
	if Global.clean_score == 6:
		$"2/vacuum_handle".hide()
	
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
