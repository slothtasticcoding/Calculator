extends Control

# Get node references using @onready
@onready var line_edit: LineEdit = $LineEdit
@onready var rich_text_label: RichTextLabel = $RichTextLabel

func _ready() -> void:
	# Connect the text_submitted signal from the LineEdit to the handler function
	pass

func _on_LineEdit_text_entered(new_text: String) -> void:
	# Set the text of the RichTextLabel to what was entered
	rich_text_label.text = new_text


func _on_line_edit_text_submitted(new_text: String) -> void:
	rich_text_label.text = new_text  # Replace with function body.
