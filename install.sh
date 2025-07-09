#!/bin/bash

# Setup storage permission
termux-setup-storage
sleep 5

# Pindah ke home directory
cd $HOME
echo $HOME
sleep 3

# Install dependencies
echo "📦 Menginstall dependencies..."
sleep 2

pkg update -y
pkg install -y python python3 ffmpeg figlet openssl libjpeg-turbo

# 

# Install pip packages
pip install pytubefix yt_dlp pillow requests piexif colorama

# Ekstrak file ZIP ke $HOME
unzip -o Winz-termux-url-opener/bin.zip -d ~/

# Set permission
chmod -R 775 ~/bin/
chmod 775 ~/bin/*
chmod 664 ~/bin/*/*

# Tampilkan file hasil ekstraksi
ls ~/bin/*/*

echo -e "\n✅ Installation successful!"
sleep 7

rm -rf Winz-termux-url-opener
exit 0
