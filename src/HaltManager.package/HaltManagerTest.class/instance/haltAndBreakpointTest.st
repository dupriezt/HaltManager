visual test
haltAndBreakpointTest
	self halt.
	1halt.
	self haltOnce.
	self haltOnCount: 4.
	self haltIf: [ true].
	self inactiveHalt.
	self inactiveHaltOnce.
	self inactiveHaltOnCount: 4.
	self inactiveHaltIf: [ true ].
	'breakpoint'. "Place it using suggestions"
	'breakOnce'. "Place it using suggestions"
	'breakOnCondition'. "Place it using suggestions"
	'inactiveBreakpoint' "Place it using suggestions"