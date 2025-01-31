extends Resource

class_name Inventory

@export var items: Array[ITEM]

func add_item(new_item : ITEM):
	for i in items:
		if i != null:
			if i.id == new_item.id:
				i.COUNT = i.COUNT + new_item.COUNT
				return
	for i in items.size():
		if items[i] == null:
			items[i] = new_item
			return
