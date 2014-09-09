stepping
step
	| rect |
	analyzer ifNil: [^ self].
	self source isInWorld ifFalse: [^ self].
	self isInWorld ifFalse: [^ self].
	owner isHandMorph ifTrue: [^ self].
	owner addMorph: self inFrontOf: self source.
	rect := analyzer track translateBy: self source topLeft.
	self bounds: (rect area > 0 ifTrue: [rect] ifFalse: [self source bounds])