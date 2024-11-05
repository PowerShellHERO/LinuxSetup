
# stty
stty kill undef
stty stop undef
stty start undef

# pacman alias
# maybe should split.
alias pac='sudo pacman -S --needed'
alias pacs = 'pacman -Ss' # search remote
alias pacq = 'pacman -Qs'

# prompt_command
export BASH_CHRONICLE=$HOME/.bash_chronicle
PROMPT_COMMAND=prompt_cmd

function prompt_cmd {
  local r=$?
  show_exit $r;
  add_chronicle $r;
}

function add_chronicle {
  if [[ $1 -eq 0 ]]; then
  echo "`date '+%Y-%m-%d %H:%M:%S'` $HOSTNAME:$$ $PWD ($1) `history 1`" >> $BASH_CHRONICLE;


}

function show_exit {
  if [[ $1 -eq 0 ]]; then return; fi
  echo -e "\007exit $1"
}

function i { if [ "$1" ]; then grep "$1" $BASH_CHRONICLE ; else tail -30 $BASH_CHRONICLE; fi }

