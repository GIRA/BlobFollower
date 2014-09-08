accessing
form
	| form |
	form := true caseOf: {
		[source isKindOf: WebCamMorph]
			-> [source form].
		[source isKindOf: SketchMorph]
			-> [source rotatedForm].
		[source isKindOf: Morph]
			-> [source imageForm]
	}.
	form depth ~= 16
		ifTrue: [form := form asFormOfDepth: 16].
	^ form