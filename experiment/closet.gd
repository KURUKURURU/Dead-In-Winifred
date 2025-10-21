extends Node2D

@onready var vacuum_audio = AudioMusic.get_node("vacuum_audio")

func _ready() -> void:
	vacuum_audio.stop()
	$vacuum_handle.hide()
	
func _process(delta: float) -> void:
	if Global.vacuum:
		if Input.is_action_pressed("click"):
			if !vacuum_audio.playing:
				vacuum_audio.play()
			$vacuum_handle.show()
			
		if Input.is_action_just_released("click"):
			$vacuum_handle.hide()
			vacuum_audio.stop()

func _on_vacuum_pressed() -> void:
	if Global.clean_mode and !Global.close_vacuum:
		Global.vacuum = true


func _on_texture_button_pressed() -> void:
	get_tree().change_scene_to_file("uid://1pqvj87kweg1")
