#!/bin/bash
[ -z "$1" ] && echo "supply language code" && exit 1
DIR="`dirname $0`/"
msgfmt "$DIR""$1"/LC_MESSAGES/hangupsbot.po --output-file "$DIR""$1"/LC_MESSAGES/hangupsbot.mo
echo "mo compiled from po for $1"
