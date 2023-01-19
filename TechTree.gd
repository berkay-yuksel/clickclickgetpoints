extends Node2D

export (Color,RGBA) var mouse_out
export (Color,RGBA) var mouse_over

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var resource_center_level=0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass







func _on_TextureButton_pressed():
	get_node("Research Center/lvl1").set_modulate(mouse_over)
	resource_center_level=resource_center_level+1
	get_node("Research Center/ProgressBar").value=34
	get_node("Research Center/lvl2").set_modulate(mouse_out)
	pass # Replace with function body.


func _on_TextureButton2_pressed():
	if resource_center_level==1:
		get_node("Research Center/lvl2").set_modulate(mouse_over)
		get_node("Research Center/ProgressBar").value=51
		resource_center_level=resource_center_level+1
		get_node("Research Center/lvl3").set_modulate(mouse_out)
	pass # Replace with function body.


func _on_TextureButton3_pressed():
	if resource_center_level==2:
		get_node("Research Center/lvl3").set_modulate(mouse_over)
		get_node("Research Center/ProgressBar").value=68
		resource_center_level=resource_center_level+1
		get_node("Research Center/lvl4").set_modulate(mouse_out)
	pass # Replace with function body.


func _on_TextureButton4_pressed():
	if resource_center_level==3:
		get_node("Research Center/lvl4").set_modulate(mouse_over)
		get_node("Research Center/ProgressBar").value=85
		get_node("Research Center/ProgressBar2").value=85
		resource_center_level=resource_center_level+1	
		get_node("Research Center/lvl5").set_modulate(mouse_out)
	pass # Replace with function body.


func _on_TextureButton2_mouse_entered():
	get_node("Research Center/InfoBox").set_bbcode("GRAND LIBRARY                                                                    Word goes on, writings remain and the science works cumulatively. Build a library so new scientists can learn from the elders.")
	pass # Replace with function body.


func _on_TextureButton2_mouse_exited():
	get_node("Research Center/InfoBox").set_bbcode("INFO BOX")
	pass # Replace with function body.


func _on_TextureButton_mouse_entered():
	get_node("Research Center/InfoBox").set_bbcode("MAIN BUILDING                                                                    You can build a lot of things inside this building to improve science gathering.")
	pass # Replace with function body.


func _on_TextureButton_mouse_exited():
	get_node("Research Center/InfoBox").set_bbcode("INFO BOX")
	pass # Replace with function body.


func _on_TextureButton3_mouse_entered():
	get_node("Research Center/InfoBox").set_bbcode("LABORATORY                                                                                                        Experiments is the key to make science. Build this and science go brrrr")
	pass # Replace with function body.


func _on_TextureButton3_mouse_exited():
	get_node("Research Center/InfoBox").set_bbcode("INFO BOX")
	pass # Replace with function body.
