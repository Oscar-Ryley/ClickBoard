extends TextureButton

var tupgrades = [70, 150]
var upnum = -1

func _ready():
	self.pressed.connect(self._button_pressed)

func _button_pressed():
	if Global.clicks >= Global.tupgrade:
		Global.tanks += 1
		Global.clicks -= Global.tupgrade
		if upnum < len(tupgrades)-1:
			upnum += 1
		Global.tupgrade = tupgrades[upnum]
