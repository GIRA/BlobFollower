accessing
fps
	^ analyzer ifNil: [0] ifNotNil: [:a | a fps]