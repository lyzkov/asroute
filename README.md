# ASRoute

## Introduction
ASRoute is an automated tool written in bash that use traceroute and whois to autonomous system lookup on route path.  
Additionally it supports input streams as list of studied hosts and SQLite logging.

## Configuration
Add executable flag to files permission:

```bash
chmod 755 asroute graf url2domain
```

In order to automate script execution add this line to your crontab:

```bash
0 12 * * * /path/to/script/asroute < /path/to/hosts/list/hosts.txt
```

## Description of attached files

* asroute - executable file written in bash language,
* asroute.sql - schema of database used to store asroute`s output,
* graf - executable script file used to generate AS adjacency graph in PNG from database,
* url2domain - executable script file used to convert list of urls to domain names,
* hosts.txt - list of hosts (each in new line) used by asroute.

## ASRoute requirements

### Linux system with:
* bash
* grep
* awk
* sed
* bc
* ping
* traceroute
* whois
* sqlite3
* graphviz (optional AS adjacency graph generation)
