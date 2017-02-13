#!/bin/bash

rm -rf en
wget -D=gstatic.com,sites.google.com,googleusercontent.com -P en -l1 --span-hosts -mkEpnp -e robots=off -nd https://sites.google.com/view/mtlgreen
mv en/mtlgreen.html en/index.html
sed -i -- 's/visibility: hidden/visibility: visible/g' en/index.html
sed -i -- 's|title="Green Challenge"|onclick="location.replace(\x27https://sites.google.com/view/mtlgreen/green-challenge\x27),\x27_top\x27" title="Green Challenge"|g' en/index.html
sed -i -- 's|title="Sponsors"|onclick="location.replace(\x27https://sites.google.com/view/mtlgreen/sponsors\x27),\x27_top\x27" title="Green Challenge"|g' en/index.html
