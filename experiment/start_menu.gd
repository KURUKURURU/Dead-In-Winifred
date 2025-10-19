extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CanvasLayer.show()
	$CanvasLayer/Fade_Start/Ani.play("IN")
	await $CanvasLayer/Fade_Start/Ani.animation_finished
	$CanvasLayer.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("uid://bjhd7u0qrknsx")
