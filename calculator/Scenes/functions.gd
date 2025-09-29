extends Control
@onready var line_edit: LineEdit = $VBoxContainer/PanelContainer/GridContainer/LineEdit
@onready var rich_text_label: RichTextLabel = $VBoxContainer/MarginContainer/RichTextLabel
var old_text = " "
var saved_text = " "

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	line_edit.text_submitted.connect(_on_LineEdit_text_entered) # Replace with function body.
	rich_text_label.text = saved_text


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func _on_LineEdit_text_entered(new_text: String) -> void:
	rich_text_label.set_text(old_text+"\n"+new_text)


func _on_line_edit_text_changed(new_text: String) -> void:
	old_text = rich_text_label.text # Replace with function body.


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/calculator.tscn") # Replace with function body.

 # Replace with function body.
