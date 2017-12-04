tests
testMethodsToDisplay
	| methodsToDisplay methodContainmentAssertionBlock |
	methodsToDisplay := HaltManager methodsToDisplay collect: [:anRGMethodDefinition| anRGMethodDefinition method].
	methodContainmentAssertionBlock := [ :selector | 	self assert: (methodsToDisplay contains: [:aCompiledMethod | aCompiledMethod == (self class >>selector)]) ].

	methodContainmentAssertionBlock value: #methodWithBreakpoint.
	methodContainmentAssertionBlock value: #methodWithBreakpointConditional.
	methodContainmentAssertionBlock value: #methodWithBreakpointOnce.
	methodContainmentAssertionBlock value: #methodWithBreakpointInactive.
	methodContainmentAssertionBlock value: #methodWithHalt.
	methodContainmentAssertionBlock value: #methodWithHaltColon.
	methodContainmentAssertionBlock value: #methodWithHaltIf.
	methodContainmentAssertionBlock value: #methodWithHaltIfNil.
	methodContainmentAssertionBlock value: #methodWithHaltOnCount.
	methodContainmentAssertionBlock value: #methodWithHaltOnce.
	methodContainmentAssertionBlock value: #methodWithHaltSentToOne.
	methodContainmentAssertionBlock value: #methodWithInactiveHalt.
	methodContainmentAssertionBlock value: #methodWithInactiveHaltColon.
	methodContainmentAssertionBlock value: #methodWithInactiveHaltIf.
	methodContainmentAssertionBlock value: #methodWithInactiveHaltIfNil.
	methodContainmentAssertionBlock value: #methodWithInactiveHaltOnCount.
	methodContainmentAssertionBlock value: #methodWithInactiveHaltOnce.