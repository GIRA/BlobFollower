initialize-release
configure
	self class
		apiSetHue: trackedColor hue - hueMargin
		max: trackedColor hue + hueMargin;
		apiSetSat: trackedColor saturation - saturationMargin
		max: trackedColor saturation + saturationMargin;
		apiSetV: trackedColor brightness - brightnessMargin 
		max: trackedColor brightness + brightnessMargin 