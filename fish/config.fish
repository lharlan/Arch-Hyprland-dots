if status is-interactive
    starship init fish | source
end

set -U fish_greeting ""

# Safety Nets
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Replace ls with exa
alias la 'exa -al --color=always --group-directories-first --icons' # preferred listing
alias ls 'exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll 'exa -l --color=always --group-directories-first --icons'  # long format
alias lt 'exa -aT --color=always --group-directories-first --icons' # tree listing
alias l. 'exa -ald --color=always --group-directories-first --icons .*' # show only dotfiles
alias lspy="exa -a --color=always --icons | grep .py" # show only python files

# Custom Aliases

alias :q="exit"
alias ..="cd .."
alias fcp="fish_clipboard_copy"

# Shortcuts
alias dl="cd ~/Downloads"
alias hdd="cd /home/lharl/HDD"
alias vids='cd /home/lharl/HDD/Videos'
alias windows="cd /home/lharl/Windows/Users/lharl"
alias winmount="sudo mount /dev/nvme0n1p3 /home/lharl/Windows/"
alias winumount="sudo umount /home/lharl/Windows/"
alias school="cd /home/lharl/HDD/Documents/School"
alias programming="cd /home/lharl/HDD/Programming"
alias wsl="cd /home/lharl/Windows/Users/lharl/AppData/Local/Packages/CanonicalGroupLimited.Ubuntu_79rhkp1fndgsc/LocalState/rootfs/home/"
alias fnvini="cd /home/lharl/.local/share/Steam/steamapps/compatdata/22380/pfx/drive_c/users/steamuser/Documents/My\ Games/FalloutNV/"
alias img="timg"

# Applications
alias clock="tty-clock -s"
alias poke="pokemon-colorscripts -n"
alias moji="rofimoji --skin-tone light"
alias vi="nvim"
alias s="kitten ssh"
alias musicbee='WINEPREFIX=~/.musicbee wine ~/.musicbee/drive_c/Program\ Files/MusicBee/MusicBee.exe'

# Tools
alias powermode="sudo cpupower frequency-set -g"
alias arduinochmod="sudo chmod a+rw /dev/ttyACM0"
alias openmwmod="vi ~/.config/openmw/openmw.cfg"
alias refreshfish="source ~/.config/fish/config.fish && echo 'Refreshed fish'"
alias checktab="sudo findmnt --verify --verbose"
alias grubrebuild="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias livewatts="sudo turbostat --Summary --quiet --show PkgWatt --interval 1"
alias pacs="pacman -Q | grep"
alias deltaaddon="~/Gaming/MorrowindMods/deltaplugin/delta_plugin merge --skip-cells ~/Gaming/MorrowindMods/deltaplugin/delta-merged.omwaddon"
alias lockkill="pkill -USR1 hyprlock"

alias brightness="brightnessctl set"

# Scripts
alias weather="$HOME/Scripts/weather.sh"
alias cc="$HOME/Documents/Scripts/cCompile.sh"

# Environment Variables
export EDITOR=nvim
