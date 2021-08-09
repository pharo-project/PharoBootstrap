# Pharo Bootstrap

This repository contains the code required to bootstrap a new Pharo environment. This bootstrap takes as input a Pharo source code repository and outputs:

 - a new bootstrapped image
 - a bootstrap-cache/ directory containing all elements that are required to continue the building of the image. Hermes binary files to load trait spoort and the compiler, Smalltalk scripts to load monticello and metacello, the monticello packages for loading monticello, and some initialization code. With these elements is possible to generate an image that later can be used to load Metacello baselines.
 - These elements are later used to generate the full Pharo image.
  
# Dependencies

This bootstrap runs on top of Pharo 10.0. It can however produce images for older formats (a feature that is however not so exploited). All other dependencies (Espell, Hermes) are loaded by the baseline automatically.
 
# Installation

Just download this repository and load the baseline in a new image. The easiest way to do it is as follows

```
$ wget -O - get.pharo.org/100+vm | bash
$ ./pharo Pharo.image eval "
Metacello new 
	baseline: 'BootstrapProcess';
	repository: 'tonel://.';
	load.

Smalltalk snapshot: true andQuit: true."
```

# Running the bootstrap

Run the bootstrap by calling the specialized Spur bootstrap class. This will generate a Spur image for the corresponding 32 or 64 bit architecture.

```
versionInfo := (PBVersionInfo fromLongGitDescribe: 'Pharo10.0-aaaddb-aaaa-vbb')
		buildNumber: 42;
		yourself.
		 
		
(PBBootstrap for64Bits
		versionInfo: versionInfo;
		repositoryLocation: '../pharo-local/iceberg/pharo-project/pharo' asFileReference;
		imageName: 'bootstrap.image';
		yourself) bootstrap
```

- 'Pharo10.0-aaaddb-aaaa-vbb' is the version reported by Git. The first part is the version of Pharo, aaaa is the comittish to use (This is the output of the ```git describe``` command).
- The repository location should point to a valid Pharo image repository.
- bootstrap.image is the name of the generated image. 
