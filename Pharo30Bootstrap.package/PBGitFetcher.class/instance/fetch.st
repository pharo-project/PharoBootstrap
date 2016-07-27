as yet unclassified
fetch

	| environment |
	self ensureRepository.
	
	environment := Dictionary new.
	#BaselineOfPharoBootstrap asClass project version packages do: [ :package | | version |
		version := FiMonticelloWriter new 
			written: (repository packageNamed: package name ) latestVersion snapshot
			name: package name.
		environment at: package name ifAbsentPut: version.
	].
	
	^ environment values asFiSet asRFiEnvironment	