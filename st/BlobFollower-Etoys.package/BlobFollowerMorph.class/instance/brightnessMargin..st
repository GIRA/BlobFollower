accessing
brightnessMargin: aNumber
	analyzer := ImageAnalyzer
		on: self source
		track: self trackedColor
		h: self hueMargin
		s: self saturationMargin
		v: aNumber