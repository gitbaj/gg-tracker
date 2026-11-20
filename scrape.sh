#!/bin/bash
sleep $((RANDOM % 840))
rm -rf site
wget -E -H -k -K -p -nd -P site -e robots=off --exclude-domains=googletagmanager.com,google-analytics.com,doubleclick.net "https://www.goringgap.co.uk/"

git add -A
if ! git diff --cached --quiet; then
  curl -s -X POST "https://web.archive.org/save/https://www.goringgap.co.uk/" \
    -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64)" \
    --max-time 60 || true
  gh issue create --title "Goring Gap site changed ($(date -u +'%d %b %Y %H:%M UTC'))" --body "A new snapshot was saved. Check the latest commit for the side-by-side diff." || true
fi
