#!/bin/sh
set -x

test -n "$srcdir" || srcdir=`dirname "$0"`
test -n "$srcdir" || srcdir=.

# Kludge to prevent bootstrap from pointlessly hooking up common directories
# we aren't going to use.  Can be dropped when we move to a newer Xapian
# version, where this has already been fixed properly in bootstrap.
mkdir -p xapian-letor/common xapian-applications/omega/common

"$srcdir/bootstrap" --without-autotools xapian-core
test -n "$NOCONFIGURE" || "$srcdir/configure" "$@"
