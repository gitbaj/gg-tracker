#!/bin/bash
rm -rf site
wget -E -H -k -K -p -nd -P site -e robots=off --exclude-domains=googletagmanager.com,google-analytics.com,doubleclick.net "https://www.goringgap.co.uk/"
