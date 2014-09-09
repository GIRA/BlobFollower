accessing
decimalPlacesForGetter: aGetter
	| specialGetters |
	specialGetters := self class additionsToViewerCategories
		inject: #() into: [:subTotal :next |
			subTotal , 
			((next at: 2 ifAbsent: [#()])
				select: [:item | (item at: 1 ifAbsent: [#none]) = #slot] 
				thenCollect: [:slot | slot at: 7 ifAbsent: [nil]])].
	^ (specialGetters includes: aGetter)
		ifTrue: [2]
		ifFalse: [super decimalPlacesForGetter: aGetter]
