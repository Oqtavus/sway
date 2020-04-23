#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[ -e "/etc/DIR_COLORS" ] && DIR_COLORS="/etc/DIR_COLORS"
[ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"
[ -e "$DIR_COLORS" ] || DIR_COLORS=""
eval "`dircolors -b $DIR_COLORS`"

#-PROMPT------------------------------------------------------------------------
PS1='\[\e[1;32m\]\u@\h:\[\e[1;36m\] \W \$\[\e[0m\] '
#-------------------------------------------------------------------------------

#-SYSTEM------------------------------------------------------------------------
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias off='systemctl poweroff'
alias rbt='systemctl reboot'
alias rs='reset'
#-------------------------------------------------------------------------------

#-PHP---------------------------------------------------------------------------
alias srv='php -S localhost:8000'
#-------------------------------------------------------------------------------

#-PACMAN------------------------------------------------------------------------
alias upd='sudo pacman -Syu'
#-------------------------------------------------------------------------------
