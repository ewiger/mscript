#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT(mscript, 0.1, eugeny.yakimovitch@gmail.com)
AM_INIT_AUTOMAKE([1.12 foreign no-define])
AC_CONFIG_SRCDIR([mscript.c])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_MACRO_DIR([build/m4])


###############################################################################
# Standard system utilities
###############################################################################

AC_PROG_LN_S
AC_PROG_MKDIR_P
AC_PROG_SED
AC_PROG_GREP
AM_PATH_PYTHON(,, [:])


###############################################################################
# Compiling and binary distribution
###############################################################################
# Look for MATLAB, MCC, etc.
MTB_PROG_MATLAB
AM_CONDITIONAL([THIRTYTWO], [test "x$MATLABBITS" != "x64"])
AM_CONDITIONAL([SIXTYFOUR], [test "x$MATLABBITS" = "x64"])

# We have to set the binary name here, not out in Makefile.am, or the
# substitutions don't work right.
AS_IF([test "x$os" = "xmac" -a "x$MATLABBITS" = "x64"],
	[PROG_NAME="Mscript.app"],
	[PROG_NAME="Mscript"])
AC_SUBST([PROG_NAME])

# Also, mark here if we're making an application bundle (on OS X 64-bit),
# because it acts much differently in the installation phase
AM_CONDITIONAL([MACBUNDLE], [test "x$os" = "xmac" -a "x$MATLABBITS" = "x64"])

AC_DEFINE_UNQUOTED([MATLABPATH], ["$MATLABPATH"],
        [Define path to MATLABROOT/bin directory.])
AC_DEFINE_UNQUOTED([MATLABARCH], ["`basename \$(find $MATLABPATH -maxdepth 1 -mindepth 1 -type d | egrep -e '(glnx.*|mac.*)')`"],
        		   [Define MATLAB architecture on this computer.])                   
###############################################################################
# More checks
###############################################################################
# Checks for programs.
#AC_PROG_CC['mex']

# Checks for libraries.
#AC_CHECK_LIB(engine)

# Checks for header files.
AC_CHECK_HEADERS([stdlib.h string.h])
#AC_CHECK_HEADERS([stdlib.h string.h engine.h])

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.
AC_CHECK_FUNCS([strspn])


###############################################################################
# Output
###############################################################################
AC_CONFIG_FILES([Makefile])
AC_OUTPUT
