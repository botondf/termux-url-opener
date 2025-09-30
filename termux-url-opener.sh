#!/data/data/com.termux/files/usr/bin/bash              

dir=/storage/emulated/0/Videos

# Check for Termux dependencies
for PACKAGE in ffmpeg yt-dlp 
do
	which $PACKAGE > /dev/null
	if [ ! $? -eq 0 ]; then
		echo "Installing $PACKAGE"
		pkg install $PACKAGE
	fi
done

url=$1
echo "2) lower res (240p)"
echo "3) low res (360p)"
echo "4) medium res (480p)"
echo "x) audio only (mp3)"
echo "q) quit"

read CHOICE
case $CHOICE in
  2)
    yt-dlp -o "$dir/%(title)s.%(ext)s" $url -S res:240
    ;;
  3)
    yt-dlp -o "$dir/%(title)s.%(ext)s" $url -S res:360
    ;;                                              
  4)
    yt-dlp -o "$dir/%(title)s.%(ext)s" $url -S res:480
    ;;
  x)
    yt-dlp -o "$dir/%(title)s.%(ext)s" $url -x --audio-format mp3
    ;;                                              
  q)
    ;;
esac
