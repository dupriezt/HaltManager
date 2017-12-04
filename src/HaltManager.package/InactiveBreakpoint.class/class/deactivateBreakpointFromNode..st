deactivation reactivation
deactivateBreakpointFromNode: aNode
	|activeBreakpoint inactiveBreakpoint|
	activeBreakpoint := (((Breakpoint classVariableNamed: 'AllBreakpoints') value) select: [ :aBreakpoint | aBreakpoint node == aNode. ]) first.
	inactiveBreakpoint := InactiveBreakpoint new correspondingActiveBreakpoint: activeBreakpoint.
	inactiveBreakpoint install.
	Breakpoint removeFrom: aNode.
	^ inactiveBreakpoint.