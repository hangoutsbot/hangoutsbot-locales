#!/bin/bash
[ -z "$HANGOUTSBOT_LOCALE" ] && echo "set HANGOUTSBOT_LOCALE" && exit 1
DIR="`dirname $0`/"
[ ! -f "$DIR""$HANGOUTSBOT_LOCALE"/LC_MESSAGES/hangupsbot.po ] && echo "$DIR$HANGOUTSBOT_LOCALE/LC_MESSAGES/hangupsbot.po not found" && exit 1
msgmerge --update --no-fuzzy-matching --backup=off "$DIR""$HANGOUTSBOT_LOCALE"/LC_MESSAGES/hangupsbot.po "$DIR"messages.pot
echo "messages.pot merged for $HANGOUTSBOT_LOCALE"
msgfmt "$DIR""$HANGOUTSBOT_LOCALE"/LC_MESSAGES/hangupsbot.po --output-file "$DIR""$HANGOUTSBOT_LOCALE"/LC_MESSAGES/hangupsbot.mo
echo "mo compiled from po for $HANGOUTSBOT_LOCALE"
