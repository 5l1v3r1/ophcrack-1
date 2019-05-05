#
# SYNOPSIS
#
#   CHECK_QTCHARTS
#
# DESCRIPTION
#
#   This macro will check for the presence of Qt Charts library.
#
# LAST MODIFICATION
#
#   2018-01-31
#
# COPYLEFT
#
#   Copyright (c) 2018 Cedric Tissieres
#
#   Copying and distribution of this file, with or without
#   modification, are permitted in any medium without royalty provided
#   the copyright notice and this notice are preserved.
AC_DEFUN([CHECK_QTCHARTS],
[
  PKG_PROG_PKG_CONFIG

  # Check for Qt libraries
  PKG_CHECK_MODULES(Qt5Charts, [Qt5Charts],
    [ac_qt5charts=$($PKG_CONFIG --cflags-only-I Qt5Charts)],
    [ac_qt5charts="no"])

  if test "x$ac_qt5charts" = "xno"; then
    AC_MSG_ERROR([
		  ophcrack requires Qt5Charts library.
		  Please disable the GUI via '--disable-gui',
		  or see http://www.trolltech.com/ to obtain it.
    ])
  fi
])
