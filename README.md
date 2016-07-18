# Pharo Bootstrap

This repository contains the code required to bootstrap a new Pharo environment. This bootstrap takes as input a version of Pharo (could be a metacello configuration version, a Cargo version, and in the future a git commitish) and outputs:

 - a new bootstrapped image
 - a boot-packages/ directory containing all packages that were bootstrapped and other packages that would be required to start a Pharo experience. E.g., test packages, network libraries, etc.
 - 
# Dependencies

This bootstrap runs on top of Pharo 5.0. It can however produce images for older formats (a feature that is however not so exploited). All other dependencies (OSSubprocess, Ficus, Espell) are loaded by the baseline automatically).
 
# Installation

Just download this repository and load the baseline in a new image. The easiest way to do it is as follows

```
$ wget -O - get.pharo.org/50+vm | bash
$ ./pharo Pharo.image eval "
Metacello new 
	baseline: 'PharoBootstrapProcess';
	repository: 'filetree://.';
	load.

Smalltalk snapshot: true andQuit: true."
```

# Running the bootstrap

Run the bootstrap by calling the specialized Spur bootstrap class. This will generate a Spur image for the corresponding 32 or 64 bit architecture.

```
PBBootstrapSpur3250 new
	configurationVersion: '6.0.60098' group: 'minimal';
	espellBackend: EPSimulatorBackend for32Bit forBootstrap;
	bootstrap
```