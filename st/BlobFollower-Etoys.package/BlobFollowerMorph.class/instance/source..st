accessing
source: aMorph
	aMorph isWorldOrHandMorph
		ifTrue: [analyzer := nil]
		ifFalse: [analyzer := ImageAnalyzer
			on: aMorph
			track: self trackedColor
			h: self hueMargin
			s: self saturationMargin
			v: self brightnessMargin]