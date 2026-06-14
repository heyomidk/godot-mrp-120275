extends Control

func _ready() -> void:
	var box := VBoxContainer.new()
	box.set_anchors_preset(Control.PRESET_FULL_RECT)
	add_child(box)
	await get_tree().process_frame

	for i in 50:
		var label := Label.new()
		label.text = str(i)
		box.add_child(label)
		await get_tree().process_frame

	print("done")
	get_tree().quit()
