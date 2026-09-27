extends SceneTree

var failures := 0
func _initialize() -> void:
	call_deferred("run")
func check(ok: bool, label: String) -> void:
	print("PASS " if ok else "FAIL ", label)
	if not ok:
		failures += 1
func key(code: Key) -> void:
	for pressed in [true, false]:
		var event := InputEventKey.new()
		event.keycode = code
		event.pressed = pressed
		root.push_input(event, true)
		await process_frame
func run() -> void:
	root.size = Vector2i(1280, 720)
	var demo: Node = load("res://hud.tscn").instantiate()
	root.add_child(demo)
	await process_frame
	var initial_size: Vector2 = demo.size
	for factor in [2, 3, 4, 1, 2, 3, 4, 1]:
		await key(KEY_SPACE)
		check(demo.scale_factor == factor and is_equal_approx(root.scaling_3d_scale, 1.0 / factor), "Space scaling factor " + str(factor))
		check(demo.scale_label.text == "Scale: %3.0f%%" % (100.0 / factor), "scale label matches " + str(factor))
		check(demo.size == initial_size, "HUD dimensions remain unchanged " + str(factor))
	var modes := int(Viewport.SCALING_3D_MODE_MAX)
	for i in modes * 2:
		await key(KEY_ENTER)
		var expected := (i + 1) % modes
		check(demo.filter_mode == expected, "filter state cycles " + str(expected))
		print("REQUESTED_FILTER ", expected, " EFFECTIVE_PROPERTY ", root.scaling_3d_mode, " LABEL ", demo.filter_label.text)
	check(demo.get_node("Cubes").find_children("*", "MeshInstance3D", true, false).size() == 8, "eight cube mesh instances loaded")
	print("HEADLESS STATE ONLY: no GPU scaling/filter quality or native-resolution pixels verified; failures=", failures)
	demo.queue_free()
	await process_frame
	quit(1 if failures else 0)
