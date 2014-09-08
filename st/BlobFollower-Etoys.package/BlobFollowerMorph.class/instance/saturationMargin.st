accessing
saturationMargin
	^ analyzer 
		ifNil: [0.2]
		ifNotNil: [:a | a saturationMargin]