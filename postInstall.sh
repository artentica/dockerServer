#!/bin/bash

wget https://pkgbuild.com/~eschwartz/repo/x86_64-extracted/pacman-static
chmod +x pacman-static
./pacman-static -Syyu
reboot