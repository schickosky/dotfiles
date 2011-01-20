[ -z "$PS1" ] && return
HISTCONTROL=ignoredups:ignorespace
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac
export TERM=rxvt-unicode

# fix the PATH; why sbin's aren't included is beyond me.
PATH=$PATH:/sbin:/usr/sbin:/usr/local/sbin
export PATH

# color stuff
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

source "$HOME"/.alias
source "$HOME"/.funcs
source "$HOME"/.completion

# set color variables {{{
fgblk="$(tput setaf 0)"		# Black - Regular
fgred="$(tput setaf 1)"		# Red
fggrn="$(tput setaf 2)"		# Green
fgylw="$(tput setaf 3)"		# Yellow
fgblu="$(tput setaf 4)"		# Blue
fgpur="$(tput setaf 5)"		# Purple
fgcyn="$(tput setaf 6)"		# Cyan
fgwht="$(tput setaf 7)"		# White
bfgblk="$(tput setaf 8)"	# Black - Intense
bfgred="$(tput setaf 9)"	# Red
bfggrn="$(tput setaf 10)"	# Green
bfgylw="$(tput setaf 11)"	# Yellow
bfgblu="$(tput setaf 12)"	# Blue
bfgpur="$(tput setaf 13)"	# Purple
bfgcyn="$(tput setaf 14)"	# Cyan
bfgwht="$(tput setaf 15)"	# White
bgblk="$(tput setab 0)"		# Black - Background
bgred="$(tput setab 1)"		# Red
bggrn="$(tput setab 2)"		# Green
bgylw="$(tput setab 3)"		# Yellow
bgblu="$(tput setab 4)"		# Blue
bgpur="$(tput setab 5)"		# Purple
bgcyn="$(tput setab 6)"		# Cyan
bgwht="$(tput setab 7)"		# White
bgblk="$(tput setab 8)"		# Black - Background - Intense
bgred="$(tput setab 9)"		# Red
bggrn="$(tput setab 10)"	# Green
bgylw="$(tput setab 11)"	# Yellow
bgblu="$(tput setab 12)"	# Blue
bgpur="$(tput setab 13)"	# Purple
bgcyn="$(tput setab 14)"	# Cyan
bgwht="$(tput setab 15)"	# White
normal="$(tput sgr0)"	# text reset
undrln="$(tput smul)"	# underline
noundr="$(tput rmul)"	# remove underline
mkbold="$(tput bold)"	# make bold
mkblnk="$(tput blink)"	# make blink
revers="$(tput rev)"	# reverse
# }}}

# Decide which prompt to use, from .funcs
PROMPT_COMMAND=elegant_prompt

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Added by autojump install.sh
source /etc/profile.d/autojump.bash
