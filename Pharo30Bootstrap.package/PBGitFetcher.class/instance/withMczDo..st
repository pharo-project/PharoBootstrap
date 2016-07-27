actions
withMczDo: aBlock

	#BaselineOfPharoBootstrap asClass project version packages do: [ :package | | version |
		aBlock value: (repository packageNamed: package name ) latestVersion.
	].