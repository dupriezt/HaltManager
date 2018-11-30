as yet unclassified
methodIsOnBlacklist: anRGMethodDef
	^ self blacklist anySatisfy: [:classNameSymbolAndMethodNameSymbol |
			((anRGMethodDef realClass) = (self environment at: (classNameSymbolAndMethodNameSymbol at: 1))) and: 
			[ anRGMethodDef name = (classNameSymbolAndMethodNameSymbol at: 2) ]
	].