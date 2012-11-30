# ASRoute

## Introduction
ASRoute is an automated tool written in bash that use traceroute and whois to autonomous system lookup on route path.  
Additionally it supports input streams as list of studied hosts and sqllite logging.

## Configuration
In order to automate script execution add this line to your crontab:

```bash
0 12 * * * /path/to/script/asroute < /path/to/hosts/list/hosts.txt
```
