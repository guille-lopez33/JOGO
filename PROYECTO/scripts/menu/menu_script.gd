extends Control


func _on_button_pressed():
	pass # Replace with function body.


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://escenas/opciones.tscn")


func _on_button_3_pressed():
	get_tree().change_scene_to_file("res://escenas/créditos.tscn")


func _on_button_4_pressed():
	get_tree().quit()
