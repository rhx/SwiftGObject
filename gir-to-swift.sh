#!/bin/sh
#
# Swift code wrapper generator for gobject-introspection (.gir) files.
# This needs an installed `gir2swift' executable (github.com/rhx/gir2swift)
#
. ./config.sh
mkdir -p Sources
GOBJECT_LIBDIR=`pkg-config --libs-only-L gobject-introspection-1.0 2>/dev/null | tr ' ' '\n' | grep gobject-introspection | tail -n1 | cut -c3-`
GOBJECT_DIR=`dirname "${GOBJECT_LIBDIR}"`
for prefix in /usr /usr/local $GOBJECT_DIR $PREFIX ; do
	gir_dir=${prefix}/share/gir-1.0
	gir=${gir_dir}/${Module}.gir
	if [ -e "${gir}" ] ; then
		export GIR=${gir}
		export GIR_DIR=${gir_dir}
	fi
done
if [ ! -e "${GIR}" ] ; then
	echo "*** ${GIR} does not exist!"
	echo "Make sure libgirepository1.0-dev is installed"
	echo "and can be found in /usr /usr/local or by pkg-config!"
	exit 1
fi
gir2swift -p ${GIR_DIR}/GLib-2.0.gir "${GIR}" | sed -f ${Module}.sed > Sources/${Module}.swift
echo  > Sources/GObject.swift "import CGLib"
echo >> Sources/GObject.swift "import GLib"
echo >> Sources/GObject.swift ""
grep 'public protocol' Sources/GObject-2.0.swift | cut -d' ' -f3 | cut -d: -f1 | sort -u | sed -e 's/^\(.*\)/public typealias _GObject_\1 = \1/' >> Sources/GObject.swift
echo >> Sources/GObject.swift ""
grep '^public class' Sources/GObject-2.0.swift | cut -d' ' -f3 | cut -d: -f1 | sort -u | sed -e 's/^\(.*\)/public typealias _GObject_\1 = \1/' >> Sources/GObject.swift
echo >> Sources/GObject.swift ""
echo >> Sources/GObject.swift "public extension GObject {"
grep 'public protocol' Sources/GObject-2.0.swift | cut -d' ' -f3 | cut -d: -f1 | sort -u | sed -e 's/^\(.*\)/    public typealias \1 = _GObject_\1/' >> Sources/GObject.swift
echo >> Sources/GObject.swift ""
grep '^public class' Sources/GObject-2.0.swift | cut -d' ' -f3 | cut -d: -f1 | sort -u | sed -e 's/^\(.*\)/    public typealias \1 = _GObject_\1/' >> Sources/GObject.swift
echo >> Sources/GObject.swift ""
grep '^public typealias' Sources/${Module}.swift | sed 's/^/    /' >> Sources/GObject.swift
echo >> Sources/GObject.swift "}"
if swiftc --version | grep -q 9e8266aaeb ; then
	patch -p0 < Patches/swift-9e8266aaeb.patch
fi
