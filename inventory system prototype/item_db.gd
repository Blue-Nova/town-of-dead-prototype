extends Node

var items : Dictionary

func _ready():
	items = {
		"wood" : preload("res://Game assets/wood_item.tres"),
		"paper" : preload("res://Game assets/paper_item.tres"),
		"stone" : preload("res://rock_item.tres")
	}
	items.make_read_only()

func get_item(item_name : String):
	var fetched_item = items.get(item_name).duplicate()
	if fetched_item:
		fetched_item.COUNT = 1
		return fetched_item
	else:
		return null
