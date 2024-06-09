# Source the fonts.sh script to get the fonts
source ~/.config/gtklock/clock-settings

date=$(date +"%A, %B %-d")
echo '<b>'"$date"'</b>'
time=$(date +"%-I:%M")
echo '<span size="'$LS_FONT_SIZE'" face="'$LS_FONT_FACE'" weight="'$LS_FONT_WEIGHT'">'"$time"'</span>'
