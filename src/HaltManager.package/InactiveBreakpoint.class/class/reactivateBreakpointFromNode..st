deactivation reactivation
reactivateBreakpointFromNode: aNode
	|inactiveBreakpoint|
	inactiveBreakpoint  := (allInactiveBreakpoints select: [ :inactiveBr | inactiveBr correspondingActiveBreakpoint node == aNode]) first.
	inactiveBreakpoint remove.
	inactiveBreakpoint correspondingActiveBreakpoint install.