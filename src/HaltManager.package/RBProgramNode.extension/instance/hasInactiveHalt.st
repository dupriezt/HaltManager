*HaltManager
hasInactiveHalt
	self hasMetalinkInstead ifFalse: [ ^false ].
	^ self insteadLinks anySatisfy: [ :link | link metaObject = InactiveHalt_MetalinkTarget  ].