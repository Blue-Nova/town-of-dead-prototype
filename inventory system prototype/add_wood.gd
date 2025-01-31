extends Control

signal create_item

@onready var inventory : Inventory = preload("res://Game assets/inventory_res.tres")
@onready var container : GridContainer = $NinePatchRect/GridContainer
@onready var slot : PackedScene = preload("res://inventory_panel.tscn")
var slots : Array

func _ready():
	slots = populate(inventory.items.size())
	update()

func update():
	slots = container.get_children()
	for i in slots.size():
		print("slot " , i , " is " , inventory.items[i])
		slots[i].update(inventory.items[i])

func populate(inventory_size : int):
	for i in inventory_size-1:
		var new_slot = slot.instantiate()
		container.add_child(new_slot)
	return container.get_children()

func _on_button_pressed():
	create_item.emit("wood")
	pass # Replace with function body.


func _on_button_2_pressed():
	create_item.emit("paper")
	pass # Replace with function body.


func _on_button_3_pressed():
	create_item.emit("stone")
	pass # Replace with function body.
