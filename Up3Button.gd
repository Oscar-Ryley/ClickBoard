extends TextureButton

var cupgrades = [70, 150]
var upnum = -1

func _ready():
	self.pressed.connect(self._button_pressed)

func _button_pressed():
	if Global.clicks >= Global.cupgrade:
		Global.chairs += 1
		Global.clicks -= Global.cupgrade
		if upnum < len(cupgrades)-1:
			upnum += 1
		Global.cupgrade = cupgrades[upnum]
