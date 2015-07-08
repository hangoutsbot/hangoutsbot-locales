#!/bin/bash
DIR="`dirname $0`/"
xgettext --files-from="$DIR"POTFILES.in --directory="$DIR".. --output="$DIR"messages.pot
echo "messages.pot generated in $DIR"
