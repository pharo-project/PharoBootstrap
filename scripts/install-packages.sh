#!/bin/bash 

set -ex

./pharo Pharo.image eval "
Metacello new 
	baseline: 'BootstrapProcess';
	repository: 'filetree://.';
	load.

BaselineOf compile: 'packageRepositoryURLForSpec: spec

	^ spec repositoryDescriptions
		  detect: [ :each | each beginsWith: ''tonel://'' ]
		  ifNone: [
			  spec repositoryDescriptions
				  ifEmpty: [ '''' ]
				  ifNotEmpty: [ :collection | collection anyOne ] ]'.

MetacelloBaselineConstructor compile: 'repositoryDescriptions
	
	^ self project repositoryDescription'.

Smalltalk snapshot: true andQuit: true.
"
