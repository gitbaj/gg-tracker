#!/bin/bash
rm -rf site
wget -E -H -k -K -p -nd -P site -e robots=off "https://www.goringgap.co.uk/"
--exclude-domains=googletagmanager.com,google-analytics.com,doubleclick.net
