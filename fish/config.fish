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
alias lspy="exa -a --color=always --icons | grep .py"
alias HDD="cd /run/media/lharl/HDD"
alias school="cd /run/media/lharl/HDD/Documents/School/Fall2023"
alias programming="cd /run/media/lharl/HDD/Programming"
alias refreshfish="source ~/.config/fish/config.fish"
alias spaceman="sudo pacman"
alias s="sudo"
alias poke="pokemon-colorscripts -n"
alias ..="cd .."
alias sddmwall="cd /usr/share/sddm/themes/endeavouros"
alias backup="sudo -E timeshift-gtk"
alias moji="rofimoji --skin-tone light"
alias checktab="sudo findmnt --verify --verbose"
alias Windows="cd /run/media/lharl/Windows/Users/lharl"
alias wincreate="sudo mkdir /run/media/lharl/Windows/"
alias winmount="sudo mount /dev/nvme0n1p3 /run/media/lharl/Windows/"
alias winumount="sudo umount /run/media/lharl/Windows/"
alias mesaver="glxinfo | grep 'OpenGL version'"
alias grubrebuild="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias livewatts="sudo turbostat --Summary --quiet --show PkgWatt --interval 1"
alias ffc="fastfetch --kitty ~/.config/neofetch/images/claire.jpg --logo-width 29"
alias :q="exit"
alias vi="nvim"
alias clock="tty-clock -s"
alias powermode="sudo cpupower frequency-set -g"

alias weather="$HOME/Documents/Scripts/weather.sh"
alias cc="$HOME/Documents/Scripts/cCompile.sh"

export EDITOR=nvim
