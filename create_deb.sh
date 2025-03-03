#!/bin/bash

rm -rf build

mkdir -p build/gnome-shell-extension-screen-autorotate/DEBIAN
mkdir -p build/gnome-shell-extension-screen-autorotate/etc/

cp control build/gnome-shell-extension-screen-autorotate/DEBIAN/
cp postinst build/gnome-shell-extension-screen-autorotate/DEBIAN/
cp -r screen-rotate@shyzus.github.io build/gnome-shell-extension-screen-autorotate/etc/

dpkg-deb --build build/gnome-shell-extension-screen-autorotate