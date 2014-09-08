accessing
saturationMargin: aNumber
	analyzer := ImageAnalyzer
		on: self source
		track: self trackedColor
		h: self hueMargin
		s: aNumber
		v: self brightnessMargin