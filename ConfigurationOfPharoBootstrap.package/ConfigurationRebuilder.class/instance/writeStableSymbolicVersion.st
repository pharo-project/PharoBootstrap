writing
writeStableSymbolicVersion

	| header |
	header := 'stable: spec
	<symbolicVersion: #''stable''>

	spec for: #''common'' version: ''{majorVersion}.{minorVersion}.{updateNumber}''.'.
	
	ConfigurationOfPharoBootstrap
		compile: (header format: { 
				'updateNumber' -> SystemVersion current highestUpdate.
				'majorVersion' -> SystemVersion current major.
				'minorVersion' -> SystemVersion current minor } asDictionary)
		classified: 'baselines'