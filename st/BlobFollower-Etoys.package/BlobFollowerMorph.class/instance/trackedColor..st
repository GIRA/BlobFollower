accessing
trackedColor: aColor
	analyzer := ImageAnalyzer
		on: self source
		track: aColor
		h: self hueMargin
		s: self saturationMargin
		v: self brightnessMargin