#
# ~/.bashrc
#


#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


# SASSE ADD

# Fix keyboard layout in new terminal window (urxvt)
setxkbmap se

# Set nano as default editor
export EDITOR='vim'

# Colorize less-outputs
export LESS='-R'
export LESSOPEN='|~/.config/.lessfilter %s'

#export LESSOPEN='|pygmentize -g %s'


# Stop Ranger from loading both global and local config-files
export RANGER_LOAD_DEFAULT_RC=FALSE

alias i3lock='i3lock --color 000000' 





# Set color for "less" which also will colorize the man-pages
man() {
        env LESS_TERMCAP_mb=$'\E[01;31m' \
            LESS_TERMCAL_md=$'\E[01;38;5;74m' \
            LESS_TERMCAL_me=$'\E[0m' \
            LESS_TERMCAL_se=$'\E[0m' \
            LESS_TERMCAL_so=$'\E[38;5;246m' \
            LESS_TERMCAL_ue=$'\E[0m' \
            LESS_TERMCAL_us=$'\E[04;38;5;146m' \
        man "$@"
}



