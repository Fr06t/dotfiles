PROMPT="%F{blue}%B%~%b%f"$'\n'"%F{green}%n%f@%F{magenta}%m%f %F{yellow}~%f "
RPROMPT='[%F{yellow}%?%f]'

COLUMNS=$(tput cols) 
title=exec motivate
printf "%*s\n" $(((${#title}+$COLUMNS)/2)) "$title"
