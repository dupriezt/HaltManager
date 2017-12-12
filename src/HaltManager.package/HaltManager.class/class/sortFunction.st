world menu
sortFunction
	"Hand coded sort function for Pharo 6 or lower, Nice sort function using pharo 7 features for pharo 7 or higher"
	(SystemVersion current major <= 6) ifTrue: [ ^
		[ :a :b | 
			(a package name < b package name) or: [ 
				(a package name = b package name) and: [ 
					(a origin name < b origin name) or: [ 
						(a origin name = b origin name) and: [ 
							a name < b name					
		 ]]]]]
	] ifFalse: [ ^ ((#package collatedBy: #name), (#class collatedBy: #name), #selector) ]