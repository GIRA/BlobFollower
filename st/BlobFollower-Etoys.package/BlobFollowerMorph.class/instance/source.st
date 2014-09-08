accessing
source
	^ analyzer 
		ifNil: [World]
		ifNotNil: [:a | a source]