#!/bin/sh
#
# Configuration for the module to compile, the Swift toolchain, and
# the compiler and linker flags to use.
#
VER=2.0
Mod=GLibObject
Pkg=GObject
Module=${Pkg}-${VER}
module="`echo "${Module}" | tr '[:upper:]' '[:lower:]'`"
mod="`echo "${Pkg}" | tr '[:upper:]' '[:lower:]'`"
LINKFLAGS="`pkg-config --libs $module gio-unix-${VER} glib-${VER} | tr ' ' '\n' | sed 's/^/-Xlinker /' | tr '\n' ' '`"
CCFLAGS="`pkg-config --cflags $module gio-unix-${VER} glib-${VER} | tr ' ' '\n' | sed 's/^/-Xcc /' | tr '\n' ' ' `"
TAC="tail -r"
if which tac >/dev/null ; then
   TAC=tac
   else if which gtac >/dev/null ; then
	TAC=gtac
   fi
fi
