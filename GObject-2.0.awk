#!/usr/bin/awk
#
# Patch the generated wrapper Swift code to handle special cases
#
BEGIN { unowned_init = 0 ; unowned = 0 }
/open .* InitiallyUnowned:/ {
    unowned_init = 1
}
/override public.* init._/ {
  if (unowned_init) {
    unowned_init = 0
    unowned = 2
  }
}
/super.init/ {
  if (unowned) {
    unowned--
    print
    print "        _ = refSink()"
    next
  }
}
// { print }
