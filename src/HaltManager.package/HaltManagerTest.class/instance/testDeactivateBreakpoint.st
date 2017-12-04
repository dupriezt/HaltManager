tests
testDeactivateBreakpoint
	| nodesWithBreakpoints nodeWithBreakpoint inactiveBreakpoint |
	"Assert that the method does indeed raises a self halt (because of a breakpoint) before touching it"
	self should: [ self expSubForTestDeactivateBreakpoint ] raise: Halt.
	nodesWithBreakpoints := MessageNodeFinder findMessageNodesSatisfying: [ :msgNode | msgNode selector == #addBreakpointOnSetupHere ] inNode: (self class >>#expSubForTestDeactivateBreakpoint) ast.
	"Assert there's only one `self addBreakpointOnSetupHere` in method expSubForTestDeactivateBreakpoint"
	self assert: nodesWithBreakpoints size equals: 1.
	nodeWithBreakpoint := nodesWithBreakpoints first.
	
	inactiveBreakpoint := InactiveBreakpoint deactivateBreakpointFromNode: nodeWithBreakpoint.
	inactiveBreakpointsAddedDuringSetupAndTests add: inactiveBreakpoint.
	"Assert the InactiveBreakpoint just created is indeed in the list of all InactiveBreakpoints maintained by the class"
	self assert: (InactiveBreakpoint allInactiveBreakpoints anySatisfy: [:inacBrkpt | inacBrkpt == inactiveBreakpoint]).
	"Assert that the method does not raise a Halt any longer after its breakpoint has been deactivated"
	self shouldnt: [self expSubForTestDeactivateBreakpoint] raise: Halt.
	
	
	