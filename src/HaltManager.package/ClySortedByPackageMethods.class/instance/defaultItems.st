initialization
defaultItems
	"Sort methods by 1) Package name, 2) Object name and 3) method name"
	^SortedCollection sortBlock:  [ :a :b | 
		(a actualObject package name < b actualObject package name) or: [ 
			(a actualObject package name = b actualObject package name) and: [ 
				(a actualObject origin name < b actualObject origin name) or: [ 
					(a actualObject origin name = b actualObject origin name) and: [ 
						a name < b name					
		 ]]]]]