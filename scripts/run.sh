#!/bin/bash 

set -ex

./pharo Pharo.image eval "
PBBootstrapSpur50${2}bit new
	configurationVersion: '${1}' group: '${3}';
	espellBackend: EPSimulatorBackend for${2}Bit forBootstrap;
	bootstrap"