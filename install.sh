#!/data/data/com.termux/files/usr/bin/bash              

# An initial install script. Only run the first time.

wd="$HOME/termux-url-opener"

if [ "$(pwd)" != "$wd" ]; then
    echo "Please run inside $wd."
    exit 1
elif [ ! -e install.sh ]; then
    echo "could not find install.sh. Please run inside $wd."
    exit 1
fi

chmod u+x $HOME/termux-url-opener/termux-url-opener.sh
mkdir $HOME/bin
ln -s $HOME/termux-url-opener/termux-url-opener.sh $HOME/bin/termux-url-opener.sh
#ln -s $HOME/termux-url-opener/termux-url-opener.sh $HOME/bin/termux-file-editor.sh
termux-setup-storage

echo "Sucessfully installed to $HOME/bin/termux-url-opener.sh."
