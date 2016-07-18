#!/bin/bash 

set -ex

./pharo Pharo.image eval "
PBBootstrapSpur${2}50 new
	configurationVersion: '${1}' group: '${3}';
	espellBackend: EPSimulatorBackend for${2}Bit forBootstrap;
	bootstrap"