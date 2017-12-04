tests
testReactivateBreakpoint
	| nodesWithInactiveBreakpoints nodeWithInactiveBreakpoint |
	"Assert that the method does not raises a self halt before touching it"
	self shouldnt: [ self expSubForTestReactivateBreakpoint ] raise: Halt.
	nodesWithInactiveBreakpoints := MessageNodeFinder findMessageNodesSatisfying: [ :msgNode | msgNode selector == #addInactiveBreakpointOnSetupHere ] inNode: (self class >>#expSubForTestReactivateBreakpoint) ast.
	"Assert there's only one `self addInactiveBreakpointOnSetupHere` in method expSubForTestReactivateBreakpoint"
	self assert: nodesWithInactiveBreakpoints size equals: 1.
	nodeWithInactiveBreakpoint := nodesWithInactiveBreakpoints first.
	
	InactiveBreakpoint reactivateBreakpointFromNode: nodeWithInactiveBreakpoint.
	"Assert that the method now raises a Halt after its breakpoint has been reactivated"
	self should: [self expSubForTestReactivateBreakpoint] raise: Halt.
	
	
	