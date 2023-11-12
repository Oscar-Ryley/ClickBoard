extends TextureButton

var supgrades = [70, 150]
var upnum = -1

func _ready():
	self.pressed.connect(self._button_pressed)

func _button_pressed():
	if Global.clicks >= Global.supgrade:
		Global.supplies += 1
		Global.clicks -= Global.supgrade
		if upnum < len(supgrades)-1:
			upnum += 1
		Global.supgrade = supgrades[upnum]
