
echo "where do you want to install the fonts? local or global(require sudo) [l/g]"

read location

if [ "$location" == "l" ]; then
    if [ ! -d ~/.local/share/fonts/TTF ]; then
       mkdir ~/.local/share/fonts/TTF
    fi
     if [ ! -d ~/.local/share/fonts/OTF ]; then
       mkdir ~/.local/share/fonts/OTF
    fi
    cp ~/.config/assets/fonts/MaterialIcons-Regular.ttf ~/.local/share/fonts/TTF
    cp ~/.config/assets/fonts/MaterialIconsRound-Regular.otf ~/.local/share/fonts/OTF
else [ $location == "g" ]; then
    sudo cp ~/.config/assets/fonts/MaterialIcons-Regular.ttf /usr/fonts/TTF
    sudo cp ~/.config/assets/fonts/MaterialIconsRound-Regular.otf /usr/fonts/OTF
fi    
