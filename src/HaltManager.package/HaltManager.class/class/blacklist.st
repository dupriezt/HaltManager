as yet unclassified
blacklist
	"Array of {class name symbol. method name symbol} arrays"
	^ { 
	{#ClyClassWithHalts. #methodWithHalts2}.
	{#ClyClassWithHalts. #methodWithHalts1}.
	{#ClyClassWithProblemMethods. #methodWithHalt}.
	{#ClyClassWithProblemMethods. #methodWithHalt2}
	
	 }