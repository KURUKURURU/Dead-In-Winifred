extends Node2D


func _on_up_pressed() -> void:
	get_tree().change_scene_to_file("uid://chanjw20tcrdl")


func _on_texture_button_pressed() -> void:
	get_tree().change_scene_to_file("uid://bjhd7u0qrknsx")

func _ready() -> void:
	if !Global.key3:
		$RichTextLabel.show()
		$RichTextLabel.text = "i need to clean the house a bit."
		await wait(3.0)
		$RichTextLabel.hide()
		$RichTextLabel.text = ""
		Global.key3 = true
	
func wait(seconds: float) -> void:
	await get_tree().create_timer(seconds).timeout
