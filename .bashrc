#
# ~/.bashrc
# echo "BREATHE MOVE DRINK" | figlet -w 1000 -f /usr/share/figlet/fonts/halfiwi.flf
# echo "HAMMER TIME!" | figlet -w 1000 -f /usr/share/figlet/fonts/halfiwi.flf

export EDITOR=nvim
export HYPRSHOT_DIR='/home/AANN/Pics/SS/'
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# echo "Divine Intuituion" | figlet -f /usr/share/figlet/fonts/halfiwi.flf

# Previous directory
alias b='cd -'

# Parent directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias ls='eza --color=always --git --icons=always --no-time --no-user --no-permissions'
alias ll='eza --color=always --long --git --icons=always --no-time --no-user --no-permissions'
alias ww='eza --color=always --long --git --icons=always --no-time --no-user'

# Jump to N-th previous directory in bash (requires pushd/popd history)
# alias 1='cd -1'
# alias 2='cd -2'
# alias 3='cd -3'
# alias 4='cd -4'
# alias 5='cd -5'
# alias 6='cd -6'
# alias 7='cd -7'
# alias 8='cd -8'
# alias 9='cd -9'

# Go to git repository root
alias grt='cd "$(git rev-parse --show-toplevel 2>/dev/null || echo .)"'
alias fo='nvim ~/documents/ME/forgor.md'
alias todo='nvim ~/documents/ME/todo.md'
alias lix='nvim ~/documents/ME/Linx.md'
alias cls='clear'
alias pfind='ps aux | grep'


# Custom fast theme (replace with your actual function if needed)
# alias fsh-alias='fast-theme'


# alias ls='ls --color=auto'
# alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '

alias bas='source ~/.bashrc'
alias swim='sudo nvim'
alias nvm='nvim'
alias nm='nvim'
alias zzz='systemctl suspend'
alias ff='fastfetch'
alias :wq='exit'
alias :q='exit'
alias :ZZ='exit'
alias tt='tty-clock -c'
alias now='nvim ~/.bashrc'
alias cd='z'
alias cccc='cd ~/.config/ && ls'
alias ccc='cd ~/dotfiles/ && ls'
alias dies='poweroff'
alias spawn='reboot'

alias ctt='swww img --transition-type any --transition-duration 1.2 --transition-fps 60 ~/Pics/walls-catppuccin-mocha/www/$(ls ~/Pics/walls-catppuccin-mocha/www | shuf -n 1)'
export PATH="$PATH:/usr/sbin"

export PATH=$PATH:/home/AANN/.spicetify
export PATH=$PATH:/home/AANN/gitclones/pomo

eval "$(thefuck --alias)"

eval "$(zoxide init bash)"
# on  exiting yazi, cd into that dir
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
# PS1='\u-\h \W\$ '
# PS1='\n\W 󰣇 '
PS1='\n\W 󰅴 '
# PS1='\u-\h \W\$ '
# PS1='\u-\h \W\$ '
. "/home/AANN/.deno/env"