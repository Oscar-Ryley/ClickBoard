extends Node

func _process(delta):
	self.pressed.connect(self._switch)

func _switch():
	self.scale.y *= 0.7
	await get_tree().create_timer(1).timeout
	self.scale.y *= 1.428571429
