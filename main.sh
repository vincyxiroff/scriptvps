if [ "$(id -u)" != "0" ]; then
   echo "Please Run This Script As A root User" 1>&2
   exit 1
fi

apt install sudo -y

echo "-----------------------------------------------------------------------------------"
echo "#                                                                                  #"
echo "#                                  VPS SCRIPT                                      #"
echo "#                                                                                  #"
echo "#                           Copyright (C) 2023, VPS                                #"
echo "#                                                                                  #"
echo "#                                                                                  #"
echo "-----------------------------------------------------------------------------------#"
echo ""
echo "* [0] InstalL warp"
echo "* [1] install playit"
echo "* [2] Exit"

read -p "Enter Input (0-2): " input

case $input in

    0)
    apt update
    apt install curl -y
    wget -N https://raw.githubusercontent.com/vincyxiroff/scriptvps/main/warp/installwarp.sh && bash installwarp.sh;;
    1)
    apt update
    apt install curl -y
    wget -N https://raw.githubusercontent.com/vincyxiroff/scriptvps/main/warp/installplayit.sh && bash installplayit.sh;;
    2) echo "Exit" && exit;;

esac
