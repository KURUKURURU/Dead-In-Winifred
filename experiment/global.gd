extends Node
@onready var key = false
@onready var key2 = false
@onready var key3 = false

@onready var clean_mode = false
@onready var vacuum = false
@onready var clean_score = 0
@onready var close_vacuum = false

@onready var vacuum_audio = AudioMusic.get_node("vacuum_audio")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if clean_score == 6:
		
		vacuum_audio.stop()
		
		clean_mode = false
		vacuum = false
		close_vacuum = true
		
