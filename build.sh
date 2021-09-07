#!/bin/bash
WORKDIR=mobirise.AppDir
rm -Rf $WORKDIR
rm mobirise5beta-setup.deb
rm appimagetool-x86_64.AppImage
wget https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-x86_64.AppImage
wget https://download.mobirise.com/beta/mobirise5beta-setup.deb
chmod 700 appimagetool-x86_64.AppImage
chmod 700 AppRun
chmod 700 mobirise.desktop
mkdir $WORKDIR
dpkg -x mobirise5beta-setup.deb $WORKDIR
cp AppRun $WORKDIR
cp mobirise.desktop $WORKDIR
cp mobirise.png $WORKDIR
mkdir $WORKDIR/usr/bin
cd $WORKDIR/usr/bin && ln -s ../../opt/Mobirise/mobirise mobirise
cd ../../../
./appimagetool-x86_64.AppImage $WORKDIR
