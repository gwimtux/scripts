#!/bin/bash


sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y 
sudo apt-get install openjdk-8-jdk -y


wget https://launcher.mojang.com/download/Minecraft.deb
sudo dpkg -i Minecraft.deb
sudo apt -f install -y
minecraft-launcher


cd
cd Downloads
wget https://optifine.net/downloadx?f=OptiFine_1.18_HD_U_H3.jar&x=50c25c6fa41b67286f590af0cfed32ed
chmod +x OptiFine_1.18_HD_U_H3.jar
java -jar OptiFine_1.18_HD_U_H3.jar

mkdir /home/$USER/.minecraft/shaderpacks

cd 
cd Downloads
wget https://mediafiles.forgecdn.net/files/3868/240/BSL_v8.1.03.zip
mv BSL_v8.1.03.zip /home/$USER/.var/app/com.mojang.Minecraft/.minecraft/shaderpacks

cd
cd Downloads
wget https://mediafiles.forgecdn.net/files/3577/971/Bare+Bones+1.18.zip
wget https://mediafiles.forgecdn.net/files/3794/534/ABBPBR-03+x128.zip
wget https://mediafiles.forgecdn.net/files/3776/982/FreshAnimations_v1.6.1.zip
mkdir barebones
mv Bare+Bones+1.18.zip barebones
cd barebones
unzip Bare+Bones+1.18.zip
cd ..
mkdir ar
mv ABBPBR-03+x128.zip ar
cd ar
unzip ABBPBR-03+x128.zip
cd ..
mkdir fa
mv FreshAnimations_v1.6.1.zip fa
cd fa
unzip FreshAnimations_v1.6.1.zip
cd 
cd Downloads
mv /home/$USER/Downloads/fa /home/$USER/.minecraft/resourcepacks
mv /home/$USER/Downloads/ar /home/$USER/.minecraft/resourcepacks
mv /home/$USER/Downloads/barebones /home/$USER/.minecraft/resourcepacks
sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y 
clear
echo 'DONE'
echo -e 'btw pt, \e[5m6667459256755081945\e[0m is an AWESOME SEED! :DDDDD'
