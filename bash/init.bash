
# Comamnd line complate

set -o ignoreeof
complete -d cd
complete -c man
complete -v unset

# basic Key binding

bind '"\C-k": previous-history'
bind '"\C-h": backward-char'
bind '"\C-d": backward-delete-char'
bind '"\C-l": forward-char'
bind '"\C-g": delete-char'
bind '"\C-c": yank'
bind '"\C-e": end-of-line'
bind '"\C-u": beginning-of-line'
bind '"\C-z": undo'


# eusuke
export PAGER=less
export EDITOR=vim
export LESS='-X -i -P ?f%f:(stdin).  ?lb%lb?L/%L..  [?eEOF:?pb%pb\%..]'

