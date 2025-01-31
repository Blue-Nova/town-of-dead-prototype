extends Node2D

@export var inv : Inventory
@onready var gui : Control = $CanvasLayer/Control

func _on_control_create_item(id : String):
	inv.add_item(ItemDb.get_item(id))
	gui.update()
