SHELL=/bin/bash
# MATLAB_ROOT=/usr/local/MATLAB/R2014a
# ARCH=glnxa64
#AM_CFLAGS = -f $(MATLABPATH)/engopts.sh
AM_CFLAGS = -f $(srcdir)/engopts.sh
AM_LDFLAGS = -ldl
MEX = $(MATLABPATH)/mex
CFLAGS=
CC = $(MEX)

bin_PROGRAMS = mscript
mscript_SOURCES = mscript.c


#install:
#	echo '!'
