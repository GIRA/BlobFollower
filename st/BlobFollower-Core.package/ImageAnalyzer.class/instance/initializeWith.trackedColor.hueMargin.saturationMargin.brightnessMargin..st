initialize-release
initializeWith: aMorph 
trackedColor: aColor
hueMargin: hue
saturationMargin: saturation
brightnessMargin: brightness

	fails := fps := 0.
	frames := 0.
	source := aMorph.
	trackedColor := aColor.
	hueMargin := hue.
	saturationMargin := saturation.
	brightnessMargin := brightness.
	self configure;
		initialize