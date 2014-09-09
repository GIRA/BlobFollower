instance creation
on: aMorph track: trackedColor h: hueMargin s: saturationMargin v: brightnessMargin
	^ self forThisPlatform basicNew
		initializeWith: aMorph
		trackedColor: trackedColor
		hueMargin: (hueMargin min: 360 max: 0)
		saturationMargin: (saturationMargin min: 1 max: 0)
		brightnessMargin: (brightnessMargin min: 1 max: 0)