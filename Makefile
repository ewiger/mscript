SHELL=/bin/bash
MATLAB_ROOT=/usr/local/MATLAB/R2014a
ARCH=glnxa64


all:
	${MATLAB_ROOT}/bin/mex -f ${MATLAB_ROOT}/bin/engopts.sh mscript.c
