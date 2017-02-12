#!/bin/bash

rm -rf en
wget -D=sites.google.com,googleusercontent.com -P en -l1 --span-hosts -mkEpnp -e robots=off -nd https://sites.google.com/view/mtlgreen
mv en/mtlgreen.html en/index.html

rm -rf fr
wget -P fr -l1 --span-hosts -mkEpnp -nd https://sites.google.com/view/vertmtl
wget -D=sites.google.com,googleusercontent.com -P fr -l1 --span-hosts -mkEpnp -e robots=off -nd https://sites.google.com/view/vertmtl
mv fr/vertmtl.html fr/index.html
