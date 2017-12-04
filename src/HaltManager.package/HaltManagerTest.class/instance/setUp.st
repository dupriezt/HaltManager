running
setUp
	breakpointsAddedDuringSetupAndTests := LinkedList new.
	inactiveBreakpointsAddedDuringSetupAndTests := LinkedList new.
	"Adding breakpoints to the message node of selector addBreakpointOnSetupHere in method expSubForTestDeactivateBreakpoint"
	(MessageNodeFinder findMessageNodesSatisfying: [ :msgNode | msgNode selector == #addBreakpointOnSetupHere ] inNode: (self class >>#expSubForTestDeactivateBreakpoint) ast) do: [
		 :node |
		|brkpt| 
		brkpt := Breakpoint new node: node; always; install.
		breakpointsAddedDuringSetupAndTests add: brkpt.
	].
"Adding InactiveBreakpoints to the message node of selector addInactiveBreakpointOnSetupHere in method expSubForTestReactivateBreakpoint"
	(MessageNodeFinder findMessageNodesSatisfying: [ :msgNode | msgNode selector == #addInactiveBreakpointOnSetupHere ] inNode: (self class >>#expSubForTestReactivateBreakpoint) ast) do: [
		 :node |
		|brkpt inactiveBrkpt| 
		brkpt := Breakpoint new node: node; always; install.
		breakpointsAddedDuringSetupAndTests add: brkpt.
		inactiveBrkpt := InactiveBreakpoint deactivateBreakpointFromNode: node.
		inactiveBreakpointsAddedDuringSetupAndTests add: inactiveBrkpt.
	].

	"The following was used for tests about halt rewriting, but was breaking the critics plugin of calypso"
	"self class 
		compile: self originalSourceCodeOf_expSubForTestDeactivateSelfHaltByRewriting
		classified: 'experiment subjects'."
		
	"Adding breakpoints to the message node of selector addBreakpointOnSetupHere in method methodWithBreakpoint"
	(MessageNodeFinder findMessageNodesSatisfying: [ :msgNode | msgNode selector == #addBreakpointOnSetupHere ] inNode: (self class >>#methodWithBreakpoint) ast) do: [
		 :node |
		|brkpt| 
		brkpt := Breakpoint new node: node; always; install.
		breakpointsAddedDuringSetupAndTests add: brkpt.
	].

	"Adding once breakpoints to the message node of selector addBreakpointOnceOnSetupHere in method methodWithBreakpointOnce"
	(MessageNodeFinder findMessageNodesSatisfying: [ :msgNode | msgNode selector == #addBreakpointOnceOnSetupHere ] inNode: (self class >>#methodWithBreakpointOnce) ast) do: [
		 :node |
		|brkpt| 
		brkpt := Breakpoint new node: node; once; install.
		breakpointsAddedDuringSetupAndTests add: brkpt.
	].

	"Adding conditional breakpoints to the message node of selector addBreakpointConditionalOnSetupHere in method methodWithBreakpointConditional"
	(MessageNodeFinder findMessageNodesSatisfying: [ :msgNode | msgNode selector == #addBreakpointConditionalOnSetupHere ] inNode: (self class >>#methodWithBreakpointConditional) ast) do: [
		 :node |
		|brkpt| 
		brkpt := Breakpoint new node: node; condition: (Smalltalk compiler evaluate: 'true'); install.
		breakpointsAddedDuringSetupAndTests add: brkpt.
	].

"Adding InactiveBreakpoints to the message node of selector addInactiveBreakpointOnSetupHere in method methodWithBreakpointInactive"
	(MessageNodeFinder findMessageNodesSatisfying: [ :msgNode | msgNode selector == #addInactiveBreakpointOnSetupHere ] inNode: (self class >>#methodWithBreakpointInactive) ast) do: [
		 :node |
		|brkpt inactiveBrkpt| 
		brkpt := Breakpoint new node: node; always; install.
		breakpointsAddedDuringSetupAndTests add: brkpt.
		inactiveBrkpt := InactiveBreakpoint deactivateBreakpointFromNode: node.
		inactiveBreakpointsAddedDuringSetupAndTests add: inactiveBrkpt.
	].

	