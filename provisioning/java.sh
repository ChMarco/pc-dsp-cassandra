#!/bin/bash

# This file loads the machine with the correct JAVA settings
JAVA_HOME=/usr/java/default
PATH=$JAVA_HOME/bin:$PATH
export PATH JAVA_HOME
export CLASSPATH=.

export JRE_HOME=/usr/java/default/jre
export PATH=$PATH:$JRE_HOME/bin
