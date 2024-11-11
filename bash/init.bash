
# Comamnd line complate

set -o ignoreeof
complete -d cd
complete -c man
complete -v unset

# Arias

alias vi='vim'
alias la='ls -a -l --color=auto'

# eusuke

export PAGER=less
export EDITOR=vim
export LESS='-X -i -P ?f%f:(stdin).  ?lb%lb?L/%L..  [?eEOF:?pb%pb\%..]'

