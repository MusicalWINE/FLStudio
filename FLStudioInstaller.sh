#This script should be a lot more simpler to make... As FLStudio only has only one installer. (That I'm aware of)
#(If there's multiple installers for the different versions, please let me know.)

#Download the FLStudio installer
curl https://install.image-line.com/flstudio/flstudio_win64_24.1.2.4430.exe --output ~/Downloads/FLStudio.exe

#Start WINE and the installer and ask the end-user to go through the installer.  
echo "Please go through the installer prompts and let the installation finish."
echo "When asked if you want the installer to do you or everyone, choose the option for just you."
wine ~/Downloads/FLStudio.exe

#Download the custom-made .desktop file for FLStudio and ASIO4ALL. DELETE THE OLD ONES FIRST!
rm -rf ~/Desktop/FLStudio.desktop && rm -rf ~/Desktop/ASIO4ALL.desktop
curl https://gitlab.com/winemusiccreation/flstudio/-/raw/main/FLStudio.desktop --output ~/Desktop/FlStudio.desktop
curl https://gitlab.com/winemusiccreation/flstudio/-/raw/main/ASIO4ALL.desktop --output ~/Desktop/ASIO4ALL.desktop

#Tell the user that the installation is done and that we'll be removing the installer. 
echo "The installation is completed and we'll be removing the installer from your Downloads folder! 
rm -rf ~/Downloads/FLStudio.exe

echo "Completely done now! Thank you!"