#!/data/data/com.termux/files/usr/bin/bash              

# An initial install script. Only run the first time.
if [ "$(pwd)" != "$HOME" ]; then
    echo "Please run from $HOME."
    exit 1
elif [ ! -d termux-url-opener ]; then
    echo "could not find $HOME/termux-url-opener. Was this cloned in the wrong directory?"
    exit 1
fi

cd $HOME
mkdir bin
ln -s $HOME/termux-url-opener/termux-url-opener.sh $HOME/bin/termux-url-opener.sh
ln -s $HOME/termux-url-opener/termux-url-opener.sh $HOME/bin/termux-file-editor.sh
termux-setup-storage

echo "Sucessfully installed to $HOME/bin/termux-url-opener.sh. Files are downloaded to $dir.
