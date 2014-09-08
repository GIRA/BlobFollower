tracking
track
	| form rect |
	form := self form.
	frames >= 10
		ifTrue: [lastTime
			ifNil: [lastTime := Time millisecondClockValue]
			ifNotNil: [fps := 1000 / (Time millisecondClockValue - lastTime / 10)].
				frames := 0.
				lastTime := Time millisecondClockValue]
		ifFalse: [frames := frames + 1].
	rect := self class 
		apiTrackMainRectangle: form bits
		width: form width
		height: form height.
	(form boundingBox containsPoint: rect centerX @ rect centerY)
		ifTrue: [fails := 0.
			^ last := Rectangle
				origin: rect left @ rect top
				corner: rect right @ rect bottom]
		ifFalse: [(last isNil or: [fails > 10])
			ifTrue: [^ form boundingBox]
			ifFalse: [fails := fails + 1.
				^ last]]