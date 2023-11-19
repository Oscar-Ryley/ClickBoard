extends Label

func _ready():
	self.visible = true

func _process(delta):
	if Global.clicks >= 1000000000:
		self.visible = false
