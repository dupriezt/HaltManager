as yet unclassified
blacklist
	"These methods will not be shown by HaltManager by default. They contain halts but are meant to contain them (for example when testing that executing self halt indeed raises a halt)
	Format: Array of {class name symbol. method name symbol} arrays"
	^ { 
	{#ClyClassWithHalts. #methodWithHalts2}.
	{#ClyClassWithHalts. #methodWithHalts1}.
	{#ClyClassWithProblemMethods. #methodWithHalt}.
	{#ClyClassWithProblemMethods. #methodWithHalt2}.
	{#GTSUnitExampleFailingTest. #testWithHalt}.
	{#Object. #openDebugger}.
	{#ObjectTest. #b}.
	{#ObjectTest. #b1}.
	{#ObjectTest. #testHaltIf}.
	{#ObjectTest. #testHaltOnce}.
	{#ObjectTest. #testHaltOnCount}.
	{#ProtoObjectTest. #testIfNilIfNotNil}.
	{#ProtoObjectTest. #testIfNotNil}.
	{#ProtoObjectTest. #testIfNotNilIfNil}.
	{#UndefinedObjectTest. #testHaltIfNil}.
	{#UndefinedObjectTest. #testIfNil}.
	{#UndefinedObjectTest. #testIfNilIfNotNil}.
	{#UndefinedObjectTest. #testIfNotNilIfNil}.
	{#CodeSimulationTests. #methodWithHalt}.
	 }