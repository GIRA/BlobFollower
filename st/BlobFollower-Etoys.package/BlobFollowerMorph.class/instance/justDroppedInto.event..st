dropping
justDroppedInto: aMorph event: anEvent
	| candidates |
	super justDroppedInto: aMorph event: anEvent.
	candidates := aMorph morphsAt: anEvent position.
	self source: (candidates detect: [:m | m ~= self]) topRendererOrSelf