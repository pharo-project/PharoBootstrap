writing
writeBaseline

	| header dependencies rejected |
	
	rejected := #( 'Monticello' 'Ring-Monticello' 'Compression' ).
	header := 'baseline{updateNumber}: spec
	<version: ''{majorVersion}.{minorVersion}.{updateNumber}-baseline''>
	
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec description: ''Packages needed to boostrap a Pharo {majorVersion} image.''.
			spec repository: ''', baseRepository, '''.'.
	
	dependencies := String streamContents: [ :stream |
			versions sorted collect: [ :each | 
				stream 
					tab; tab; tab;
					nextPutAll: 'spec package: ';
					nextPut: $';
					nextPutAll: each packageName;
					nextPutAll: ''''.
				(each packageManifest repository isNotNil and: [ each packageManifest repository ~= baseRepository]) ifTrue: [
					stream
						nextPutAll: ' with: [ spec repository: ';
						print: each packageManifest repository;
						nextPutAll: ' ]'
					].
				stream nextPutAll: '.';
					cr.
				each ] ].
	
	ConfigurationOfPharoBootstrap
		compile: ((header, '
', dependencies, '
	spec group: ''minimal'' with: {minimalPackages}
	].') format: { 
				'updateNumber' -> SystemVersion current highestUpdate.
				'majorVersion' -> SystemVersion current major.
				'minorVersion' -> SystemVersion current minor.
				'minimalPackages' -> (versions collect: [ :each | each packageName ] thenSelect: [ :each | (rejected includes: each) not ] ) asArray asString } asDictionary)
		classified: 'baselines'