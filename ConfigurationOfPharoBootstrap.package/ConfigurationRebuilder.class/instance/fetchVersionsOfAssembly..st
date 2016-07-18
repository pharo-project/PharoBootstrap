fetching
fetchVersionsOfAssembly: anAssembly 
	anAssembly parts do: [ :part |
		(RPackageOrganizer default includesPackageNamed: part key)
			ifTrue: [ self fetchVersionOfPackage: (RPackageOrganizer default packageNamed: part key) ]
			ifFalse: [ self fetchVersionsOfAssembly: (AssemblyManifest subclasses detect: [ :manifest | manifest packageName = part key ])  ]
	]