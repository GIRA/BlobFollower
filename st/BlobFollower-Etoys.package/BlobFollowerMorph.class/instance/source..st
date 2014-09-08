accessing
source: aMorph
	analyzer := ImageAnalyzer
		on: aMorph
		track: self trackedColor
		h: self hueMargin
		s: self saturationMargin
		v: self brightnessMargin