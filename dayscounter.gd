extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var milestone=1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	self.set_text(String(get_parent().get_node("RichTextLabel").clock)+"  days passed.")
	if get_parent().get_node("RichTextLabel").clock==milestone*17:
		match milestone*17:
			17000:
				print("We are number one!")
				get_parent().get_node("RichTextLabel").timer.stop()
				get_parent().get_node("Milestone1").visible=true
			34000:
				print("Two are better than one!")
				get_parent().get_node("RichTextLabel").timer.stop()
				get_parent().get_node("Milestone1").visible=true
			"test":
				print("Oh snap! It's a string!")
		milestone*=2

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


