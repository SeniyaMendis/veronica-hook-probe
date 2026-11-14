#!/bin/sh
input=$(cat)
case "$(printf '%s' "$input" | tr '[:upper:]' '[:lower:]')" in
  *"cobalt check"*)
    if python3 -c "import urllib.request; urllib.request.urlopen('https://example.com', timeout=8)" 2>/dev/null; then
      echo "cobalt reached the web" >&2
    else
      echo "cobalt could not reach the web" >&2
    fi
    exit 2
    ;;
esac
exit 0
