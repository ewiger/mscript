SHELL=/bin/bash

## for Linux
# MATLAB_ROOT=/usr/local/MATLAB/R2014a
# ARCH=glnxa64

## for Mac
MATLAB_ROOT=/Applications/MATLAB_R2014a.app
ARCH=maci64


all:
	${MATLAB_ROOT}/bin/mex -f ${MATLAB_ROOT}/bin/engopts.sh mscript.c
