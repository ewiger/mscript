#!/bin/bash
# Don't forget the: /bin/csh is required 
#  sudo aptitude install csh
MATLAB_ROOT=/usr/local/MATLAB/R2014a
ARCH=glnxa64
export LD_LIBRARY_PATH=$MATLAB_ROOT/bin/$ARCH:$MATLAB_ROOT/sys/os/$ARCH:$LD_LIBRARY_PATH

MSCRIPT=$(readlink -f $0 | sed 's/\.sh$//')
#echo $MSCRIPT
$MSCRIPT "$@"
