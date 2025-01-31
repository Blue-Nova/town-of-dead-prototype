extends Panel

@onready var item_sprite : Sprite2D = $item_sprite
@onready var item_count : Label = $Label

func update(item: ITEM):
	if !item:
		item_sprite.visible = false
	else:
		item_sprite.visible = true
		item_sprite.texture = item.TEXTURE
		item_count.text = str(item.COUNT)
