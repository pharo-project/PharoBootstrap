"
I'm the configuration used to load everything needed to perform the bootstrap proces:
- ConfigurationOfPharoBootstrap: the definition of the Pharo packages to bootstrap
- Espell : is basic to run the bootstrap
- Ficus:  is the meta model we use to load the code to bootstrap
- Cargo: the package manager that will give us Monticello definitions for Ficus
"
Class {
	#name : #BaselineOfBootstrapProcess,
	#superclass : #BaselineOf,
	#category : 'BaselineOfBootstrapProcess'
}

{ #category : #baselines }
BaselineOfBootstrapProcess >> baseline: spec [
	<baseline>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec
			project: 'Beacon'
				with: [ spec
					className: #ConfigurationOfBeacon;
					versionString: #bleedingEdge;
					repository: 'http://smalltalkhub.com/mc/girba/Beacon/main/' ];
			baseline: 'OldCompiler' with: [
				spec repository: 'github://pharo-project/OldCompiler'];
			baseline: 'Espell' with: [ spec
				repository: 'github://guillep/espell:v1.5/src'].
	]

]
