tests
testDeactivateSelfHaltByRewriting
	"This test is commented because compiling code in a test breaks the critics plugin of calypso"
	"Assert that the method does indeed raises a self halt (because of a breakpoint) before touching it"
	"| haltNodes haltNode |
	self should: [ self expSubForTestDeactivateSelfHaltByRewriting ] raise: Halt.
	haltNodes := MessageNodeFinder findMessageNodesSatisfying: [ :msgNode | msgNode selector == #halt ] inNode: (self class >>#expSubForTestDeactivateSelfHaltByRewriting) ast."
	"Assert there's only one `self halt` in method expSubForTestDeactivateSelfHaltByRewriting"
	"self assert: haltNodes size equals: 1.
	haltNode := haltNodes first."
	
	"Deactivate the halt by rewriting the code. Check that this does not raise compilation error"
	"self shouldnt: [ HaltRewriter rewriteMessageNode: haltNode toChangeSelectorTo: #inactiveHalt." "Code from HaltIconStyler_DeactivateByRewriting that is executed when the icon to deactivate the halt is clicked""] raise: SyntaxErrorNotification."
	
	"Assert that the method does not raise a Halt any longer after its halt has been deactivated"
	"self shouldnt: [self expSubForTestDeactivateSelfHaltByRewriting] raise: Halt."
	
	
	