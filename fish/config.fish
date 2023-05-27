if status is-interactive
    starship init fish | source
end

set -U fish_greeting ""

# Replace ls with exa
alias la 'exa -al --color=always --group-directories-first --icons' # preferred listing
alias ls 'exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll 'exa -l --color=always --group-directories-first --icons'  # long format
alias lt 'exa -aT --color=always --group-directories-first --icons' # tree listing
alias l. 'exa -ald --color=always --group-directories-first --icons .*' # show only dotfiles

# Custom aliases
alias HDD="cd /run/media/lharl/HDD"
alias refreshfish="source ~/.config/fish/config.fish"
alias spaceman="sudo pacman"
alias s="sudo"
alias poke="pokemon-colorscripts -n"
alias weather="curl https://wttr.in/alamogordo"
alias ..="cd .."
alias sddmwall="cd /usr/share/sddm/themes/endeavouros"
alias snvim="sudoedit"
