extends Control


var LabelName = 'ADD VARIABLE' setget set_lable

func set_lable(newvalue):
	LabelName = newvalue
	$"%Label".text =  LabelName.capitalize()
	if $"%items".visible:
		$"%icon".rect_position.x =17
		$"%icon".rect_rotation =90
	else:
		$"%icon".rect_position.x =0
		$"%icon".rect_rotation =0
	
func toggle_items(event):
	if (event is  InputEventMouseButton and  event.get_button_index()==1) and event.pressed:
		$"%items".visible = not $"%items".visible
		set_lable(LabelName)
	
func add_item(item:Object):
	$"%items".add_child(item)
	
