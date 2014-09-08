accessing
trackedColor
	^ analyzer 
		ifNil: [Color blue]
		ifNotNil: [:a | a trackedColor]