#!/bin/sh

STATUS=$(protonvpn status | grep Status | tr -d ' ' | cut -d ':' -f2)

if [ "$STATUS" = "Connected" ]; then
    echo "%{F#7eda63}%{A1:protonvpn c:} Connected%{A}%{F-}"
else
    echo "%{F#d37272}%{A1:protonvpn c:} Off%{A}%{F-}"
fi
