extends TextureButton

var eupgrades = [70, 150]
var upnum = -1

func _ready():
	self.pressed.connect(self._button_pressed)

func _button_pressed():
	if Global.clicks >= Global.eupgrade:
		Global.employees += 1
		Global.clicks -= Global.eupgrade
		if upnum < len(eupgrades)-1:
			upnum += 1
		Global.eupgrade = eupgrades[upnum]
