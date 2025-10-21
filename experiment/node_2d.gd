extends Node2D
@onready var vacuum_audio = AudioMusic.get_node("vacuum_audio")

func _on_up_pressed() -> void:
	get_tree().change_scene_to_file("uid://chanjw20tcrdl")


func _on_texture_button_pressed() -> void:
	if Global.clean_mode and Global.clean_score != 3:
		$RichTextLabel.text = "I should finish cleaning here."
		await wait(2.0)
		$RichTextLabel.text = ""
	else:
		get_tree().change_scene_to_file("uid://bjhd7u0qrknsx")

func _process(delta):
	if Global.clean_score == 6:
		$JoRoom.show()
		$vacuum_handle.hide()
		$RichTextLabel.text = "I finished cleaning, I should wake Jo up. Her room is to the left."
		await wait(2.0)
		$RichTextLabel.text = ""
		
	if Global.vacuum:
		if Input.is_action_pressed("click"):
			if !vacuum_audio.playing:
				vacuum_audio.play()
			$vacuum_handle.show()
			#if $dirt/Area2D.overlaps_body($vacuum_handle):
				#$dirt.hide()
			
		if Input.is_action_just_released("click"):
			$vacuum_handle.hide()
			vacuum_audio.stop()

func _ready() -> void:
	$JoRoom.hide()
	$dirt.show()
	vacuum_audio.stop()
	$vacuum_handle.hide()
	
	if !Global.key3:
		Global.clean_mode = true
		
		$RichTextLabel.show()
		$RichTextLabel.text = "i need to clean the house a bit."
		
		await wait(3.0)
		
		$RichTextLabel.hide()
		$RichTextLabel.text = ""
		Global.key3 = true
		
	
func wait(seconds: float) -> void:
	await get_tree().create_timer(seconds).timeout


func _on_rightcloset_pressed() -> void:
	get_tree().change_scene_to_file("uid://j5bu0oufh0y")


#func _on_dirt_mouse_entered():
	#if Global.clean_mode and Input.is_action_pressed("click"):
		#if 
			#$dirt.hide()


func _on_jo_room_pressed() -> void:
	get_tree().change_scene_to_file("uid://bm5cbav62bwf6")
