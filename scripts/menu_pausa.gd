extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS
	visible = false

func _input(event):
	if event.is_action_pressed("pausar"):
		print("Script Pausado", get_tree().paused)
		toogle_pause()
		
func toogle_pause():
	get_tree().paused = !get_tree().paused
	visible = get_tree().paused
	
	if get_tree().paused:
		print("Pausado")
	else:
		print("Reanudado")
