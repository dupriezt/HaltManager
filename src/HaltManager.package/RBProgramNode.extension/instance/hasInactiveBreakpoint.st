*HaltManager
hasInactiveBreakpoint
	self hasMetalinkBefore ifFalse: [ ^false ].
	^ self beforeLinks anySatisfy: [ :link | link metaObject = InactiveBreakpoint_MetalinkTarget ].