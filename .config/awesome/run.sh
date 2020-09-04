#!/bin/bash
if pgrep -x "$1" >/dev/null
then
else
    $1
fi
