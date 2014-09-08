accessing
hueMargin: aNumber
	analyzer := ImageAnalyzer
		on: self source
		track: self trackedColor
		h: aNumber
		s: self saturationMargin
		v: self brightnessMargin