accessing
emptyReplacementLink
	^ MetaLink new
		metaObject: InactiveHalt_MetalinkTarget ;
		selector: #doNotBreak;
		control: #instead;
		options: #(optionCompileOnLinkInstallation).