#!/bin/sh
#
# Configuration for the module to compile, the Swift toolchain, and
# the compiler and linker flags to use.
#
VER=2.0
JAZZY_VER=2.68.1
Mod=`grep name: Package.swift | head -n1 | cut -d'"' -f2`
Pkg=GObject
Module=${Pkg}-${VER}
module="`echo "${Module}" | tr '[:upper:]' '[:lower:]'`"
mod="`echo "${Pkg}" | tr '[:upper:]' '[:lower:]'`"
if [ -z "$BUILD_DIR" ]; then
  if `pwd -P | grep -q Dropbox` ; then
    export BUILD_DIR="/tmp/.build-$Module"
  else
    export BUILD_DIR="$PWD/.build"
  fi
fi
export PKG_CONFIG_PATH=/usr/local/opt/libffi/lib/pkgconfig:${PKG_CONFIG_PATH}
export PATH="${GIR2SWIFT_PATH}:${BUILD_DIR}/gir2swift/.build/release:${BUILD_DIR}/gir2swift/.build/debug:${PATH}:$PWD/.build/gir2swift/.build/release:$PWD/.build/gir2swift/.build/debug:${PATH}:/usr/local/opt/ruby/bin:`echo /usr/local/lib/ruby/gems/*/bin | tr ' ' '\n' | tail -n1`:${PATH}:`echo /var/lib/gems/*/gems/jazzy-*/bin/ | tr ' ' '\n' | tail -n1`:/usr/local/bin"
LINKFLAGS="`pkg-config --libs $module gio-unix-${VER} glib-${VER} | tr ' ' '\n' | sed -e 's/^/-Xlinker /' -e 's/-Wl,//' | tr '\n' ' ' | sed -e 's/-Xcc[ 	]*-Xlinker/-Xlinker/g' -e 's/-Xcc *$//' -e 's/-Xlinker *$//'`"
CCFLAGS="`pkg-config --cflags $module gio-unix-${VER} glib-${VER} | tr ' ' '\n' | sed 's/^/-Xcc /' | tr '\n' ' ' | sed -e 's/-Xcc[ 	]*-Xlinker/-Xlinker/g' -e 's/-Xcc *$//' -e 's/-Xlinker *$//'`"
TAC="tail -r"
if which tac >/dev/null 2>&1 ; then
   TAC=tac
   else if which gtac >/dev/null 2>&1 ; then
	TAC=gtac
   fi
fi
JAZZY_B=`echo $CCFLAGS $LINKFLAGS | sed 's/  */,/g'`
