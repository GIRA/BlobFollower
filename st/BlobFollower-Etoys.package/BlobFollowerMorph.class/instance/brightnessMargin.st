accessing
brightnessMargin
	^ analyzer 
		ifNil: [0.2]
		ifNotNil: [:a | a brightnessMargin]