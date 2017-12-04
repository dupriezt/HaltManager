defaults
iconBlock_old: aNode
	^[ :textSegmentMorph | 
		|rewriter newSourceCode methodNode methodClass compiledMethod methodParseTree|
		rewriter := RBParseTreeRewriter new.
		rewriter replace: 'self inactiveHalt' with: 'self halt' when: [:node| node == aNode].
		methodNode := aNode methodNode.
		methodClass := methodNode methodClass.
		compiledMethod := methodClass >>((methodNode selector) asSymbol).
		"methodParseTree := compiledMethod parseTree."
		methodParseTree := compiledMethod ast.
		rewriter executeTree: methodParseTree.
		newSourceCode := methodParseTree formattedCode.
		methodClass
			compile: newSourceCode
			classified: compiledMethod protocol.
		Transcript show: newSourceCode.
		textSegmentMorph delete]