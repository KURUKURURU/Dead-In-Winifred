extends Node2D
@onready var StartNote = $TextureButton
@onready var StartNoteAni = $TextureButton/ani
#var hovered

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#$StartNote.show() # Replace with function body.
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	_on_texture_button_mouse_entered()



func _on_texture_button_mouse_entered() -> void:
	if Input.is_action_just_pressed("click"):
			StartNoteAni.play("DOWN")
			await StartNoteAni.animation_finished
			await get_tree().process_frame
			$TextureButton.hide()


func _on_person_1_pressed() -> void:
	$RichTextLabel.show()
	$RichTextLabel.text = "hi wassup"
	await wait(2.0)
	$RichTextLabel.hide()

func wait(seconds: float) -> void:
	await get_tree().create_timer(seconds).timeout


func _on_texture_button_2_pressed() -> void:
	get_tree().change_scene_to_file("uid://bjhd7u0qrknsx")
