filtering
blacklist
	"These methods will not be shown by HaltManager by default. They contain halts but are meant to contain them (for example, they can be testing that executing self halt does indeed raise a halt)
	Format: Array of {class name symbol. method name symbol} arrays"
	^ { 
	{#ClyClassWithHalts. #methodWithHalts2}.
	{#ClyClassWithHalts. #methodWithHalts1}.
	{#ClyClassWithProblemMethods. #methodWithHalt}.
	{#ClyClassWithProblemMethods. #methodWithHalt2}.
	{#GTSUnitExampleFailingTest. #testWithHalt}.
	{#Object. #openDebugger}.
	{#Object. #openDebugger:}.
	{#ObjectTest. #b}.
	{#ObjectTest. #b1}.
	{#ObjectTest. #testHaltIf}.
	{#ObjectTest. #testHaltOnce}.
	{#ObjectTest. #testHaltOnCount}.
	{#UndefinedObjectTest. #testHaltIfNil}.
	{#UndefinedObjectTest. #testIfNil}.
	{#UndefinedObjectTest. #testIfNilIfNotNil}.
	{#UndefinedObjectTest. #testIfNotNilIfNil}.
	{#CodeSimulationTests. #methodWithHalt}.
	{#RBRefactoryTestDataApp. #cruft}.
	{#RBSmalllintTestObject. #codeCruftLeftInMethods}.
	{#RBDummyRefactoryTestDataApp. #cruft}.
	 }