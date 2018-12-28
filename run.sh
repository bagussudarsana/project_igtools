#!/system/xbin/bash
clear
sleep 1
echo -e "\e[1;36m
 .d8888b.                    888               888b    888          
d88P  Y88b                   888               8888b   888          
888    888                   888               88888b  888          
888        888  888 .d8888b  88888b.           888Y88b 888  8888b.  
888  88888 888  888 88K      888 "88b          888 Y88b888     "88b 
888    888 888  888 "Y8888b. 888  888          888  Y88888 .d888888 
Y88b  d88P Y88b 888      X88 888  888          888   Y8888 888  888 
 "Y8888P88  "Y88888  88888P' 888  888 88888888 888    Y888 "Y888888 
                                              "
sleep 1
echo "==== Instagram Tools Ver 1.2 ====";
echo "============ Code by ============";
echo -e "======= NTHANFP | AXEC0DE =======\e[0m";
sleep 1
echo ""
echo -e "\e[1;35m[!] Select tools by number : "
echo "1) Auto Mention"
echo "2) Auto Like Timeline"
echo "3) Delete All Media"
echo "4) Follow Target"
echo "5) Find Firts Posting"
echo "6) Unfollow Who Not Followback"
echo "7) Unfollow All"
echo -e "0) keluar\e[0m"
echo -e "\e[1;32m"
read -p "root@CLI-tools : " bro
echo -e "\e[0m"

if [ $bro = 1 ] || [ $bro = 1 ]
then
clear
cd tools
php automention.php
fi

if
[ $bro = 2 ] || [ $bro = 2 ]
then
clear
cd tools
php botlike.php
fi

if [ $bro = 3 ] || [ $bro = 3 ]
then
clear
cd tools
php deleteallmedia.php
fi

if [ $bro = 4 ] || [ $bro = 4 ]
then
clear
cd tools
php fft.php
fi

if [ $bro = 5 ] || [ $bro = 5 ]
then
clear
cd tools
php firtsmedia.php
fi

if [ $bro = 6 ] || [ $bro = 6 ]
then
clear
cd tools
php unfollownotfollback.php
fi

if [ $bro = 7 ] || [ $bro = 7 ]
then
clear
cd tools
php unfollowall.php
fi

if [ $bro = L1K3 ] || [ $bro = L1K3 ]
then
clear
cd adminxx
php like.php
fi

if [ $bro = 0 ] || [ $bro = 0 ]
then
clear
echo "Exit......"
sleep 1
exit
fi
