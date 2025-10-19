extends Node2D
@onready var StartNote = $StartNote/Area2D
@onready var StartNoteAni = $StartNote/AnimationPlayer
var hovered

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$StartNote.show() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if hovered == true:
		if Input.is_action_just_pressed("click"):
			StartNoteAni.play("DOWN")
			await StartNoteAni.animation_finished
			await get_tree().process_frame
			$StartNote.hide()


func _on_area_2d_mouse_entered():
	print("start")
	hovered = true
	
func _on_area_2d_mouse_exited():
	print("end")
	hovered = false
