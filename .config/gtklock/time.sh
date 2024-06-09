# Source the fonts.sh script to get the fonts
source ~/.config/gtklock/clock-settings

date=$(date +"%A, %B %-d")
echo '<span foreground="'$LS_FONT_COLOR'">''<b>'"$date"'</b>''</span>'
time=$(date +"%-I:%M")
echo '<span foreground="'$LS_FONT_COLOR'" size="'$LS_FONT_SIZE'" face="'$LS_FONT_FACE'" weight="'$LS_FONT_WEIGHT'">'"$time"'</span>'
