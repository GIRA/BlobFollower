accessing
hueMargin
	^ analyzer 
		ifNil: [20]
		ifNotNil: [:a | a hueMargin]