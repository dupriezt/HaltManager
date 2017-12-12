world menu
sortFunction
	"Hand coded sort function for Pharo 6 or lower, Nice sort function using pharo 7 features for pharo 7 or higher"
	(SystemVersion current major <= 6) ifTrue: [ ^
		[ :a :b | 
			(a actualObject package name < b actualObject package name) or: [ 
				(a actualObject package name = b actualObject package name) and: [ 
					(a actualObject origin name < b actualObject origin name) or: [ 
						(a actualObject origin name = b actualObject origin name) and: [ 
							a name < b name					
		 ]]]]]
	] ifFalse: [ ^ ((#package collatedBy: #name), (#class collatedBy: #name), #selector) ]