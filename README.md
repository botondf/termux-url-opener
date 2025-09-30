# About
This repository installs a script to Termux, an Android terminal emulator avaiable from the Google Play Store, which allows you to open links with Termux.

Share the link via the app's and Android's share menus. The script lets you decide what to do with the link.

### Requires some Termux packages:

`git` (to install)

`yt-dlp`

`ffmpeg`

### Directories:

The installer makes `$HOME/bin` in which the script is symlinked to, so updating is as simple as `git pull`.

Files are downloaded to a new directory `/storage/emulated/0/Videos/`.

# Install
To install, first ensure you have `git` so the repository can be cloned:

`pkg install git`

Clone the repository with default name:

`git clone https://github.com/botondf/termux-url-opener.git`

Change directory to the girtrepo root. By default it is as follows but the directory can be renamed on cloning, just use that.

`cd termux-url-opener`

Make the installer executable for the owner:

`chmod u+x install`

Run the installer:

`./install`
