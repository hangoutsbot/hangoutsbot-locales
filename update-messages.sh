#!/bin/bash
DIR="`dirname $0`/"
xgettext --files-from="$DIR"POTFILES.in --directory="$DIR".. --output="$DIR"messages.pot
echo "messages.pot generated in $DIR"
rm -rf "$DIR"en/LC_MESSAGES/hangupsbot.po
msgen messages.pot --directory="$DIR" -o "$DIR"en/LC_MESSAGES/hangupsbot.po
echo "and completed the en file"
