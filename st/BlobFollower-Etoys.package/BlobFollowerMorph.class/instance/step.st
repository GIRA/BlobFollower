stepping
step
	analyzer ifNil: [^ self].
	self source isInWorld ifFalse: [^ self].
	self isInWorld ifFalse: [^ self].
	self owner addMorph:self inFrontOf: self source.
	self bounds: (analyzer track translateBy: self source topLeft).
	