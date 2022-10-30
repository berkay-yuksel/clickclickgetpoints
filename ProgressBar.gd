extends ProgressBar


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _process(delta):
	self.set_value(get_parent().get_node("RichTextLabel").miner+get_parent().get_node("RichTextLabel").fighter+get_parent().get_node("RichTextLabel").hunter+get_parent().get_node("RichTextLabel").totalfighters+get_parent().get_node("RichTextLabel").totallabors)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
