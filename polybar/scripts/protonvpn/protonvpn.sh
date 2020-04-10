#!/bin/sh

STATUS=$(protonvpn status | grep Status | tr -d ' ' | cut -d ':' -f2)

if [ "$STATUS" = "Connected" ]; then
    echo "vpn %{F#7eda63}%{A1:protonvpn c:} %{A}%{F-}"
else
    echo "vpn %{F#d37272}%{A1:protonvpn c:} %{A}%{F-}"
fi
