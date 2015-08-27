#!/bin/sh
export LANG=C.UTF-8
export LC_ALL=C.UTF-8
export HOME="$(pwd)/debian/tests.home"
[ -e "$HOME" ] || mkdir "$HOME"
openbox &
sleep 5
dh_auto_test
ret=$?
rm -rf "$HOME"
exit $ret
