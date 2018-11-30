filtering
methodIsOnBlacklist: anRGMethodDef
	^ self blacklist anySatisfy: [:classNameSymbolAndMethodNameSymbol |
			((anRGMethodDef realClass) = (self environment at: (classNameSymbolAndMethodNameSymbol at: 1) ifAbsent: [^false])) and: 
			[ anRGMethodDef name = (classNameSymbolAndMethodNameSymbol at: 2) ]
	].