tests
testWrongfulCompilation
	self shouldnt: [ self class compile: 'hei:
1+1'
classified: 'hei' ] raise: SyntaxErrorNotification