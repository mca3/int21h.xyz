#!/bin/sh -ex
make

cd out/html
rsync --delete -rv . int21h.xyz:/var/www/int21h.xyz

cd ../gmi
rsync --delete -rv . int21h.xyz:/var/gmi/int21h.xyz
