extends Node

var subtype = ''#not implimented
var value = '' setget set_value
var propertyName = '' setget setpropertyName
var displayType = '' setget displaytype

func displaytype(input):
	displayType =input
	if displayType != '':
		var item = load("res://scenes/elementUI/PropertiesDispay/variablesLocator.tscn").instance()
		item.displayType = displayType
		item.connect('selectedvariable',self,'recivevalue')
		add_child(item)
	
func recivevalue(input):
	$"%edit".text +='%'+str(input)+'%'

func get_value():
	return $"%edit".text
func set_value(newvalue):
	value = newvalue
	$"%edit".text = value
func setpropertyName(newvalue):
	propertyName = newvalue
	$"%lable".text = propertyName
