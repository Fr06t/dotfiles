theme="slate_full"

dir="$HOME/.config/rofi/launcher/"
styles=($(ls -p --hide="colors.rasi" $dir/styles))
color="${styles[$(( $RANDOM % 20 ))]}"

rofi -no-lazy-grab -show drun -modi drun -theme $dir/"$theme"
