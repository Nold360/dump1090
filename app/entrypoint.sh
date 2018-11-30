#!/bin/sh

if [ x"$1" = x"sh" -o x"$1" = x"bash" ]; then
  exec $@
  exit
fi

exec /app/dump1090 $@
