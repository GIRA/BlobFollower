accessing
blobFound
	^ analyzer ifNil: [false] ifNotNil: [:a | a blobFound]