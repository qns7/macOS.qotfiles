# main zsh settings, env in ~/.zprofile
# read second

HISTSIZE=100000
SAVEHIST=100000

# echo -n -e "\033]0;zsh.iTerm\007"

setopt PROMPT_SUBST
PROMPT='%F{white}%B[%b%f %F{208}%D{%H:%M:%S}%f %F{white}macBooq%f %U%F{217}%~%f%u%F{white} %B] %b$%f '
PROMPT_EOL_MARK='⮐'

export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

eval "$(batman --export-env)"

alias path='echo; tr ":" "\n" <<< "$PATH"; echo;'
alias rm="rm -i"
alias ll="ls --color=auto -lah"

alias c="clear"
alias h="code ~/.zsh_history"
alias k="cat ~/keyboard_info.txt"
alias t="tty-clock -s -c -C 7 -D"
alias cal="/opt/homebrew/opt/util-linux/bin/cal -m"

alias sf="sudo nano /etc/pam.d/sudo"
alias sv="sudo visudo"

alias s="source ~/.zshrc"
alias m="cmatrix -a -b -u 3"
alias p="btop"

alias up="brewup"
alias uy='echo "$(whoami) ALL=(root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | cut -d " " -f 1) $(which yabai) --load-sa" | sudo tee /private/etc/sudoers.d/yabai'

alias ug="git pull origin main; sleep 0.37; ~/bin/SYNC; sleep 0.37; cd ~/.config; sleep 0.1; git add skhd yabai sketchybar linearmouse btop bin_scripts zsh_configs .gitignore && git commit -m \"\$(date +'%Y-%m-%d %H:%M:%S')\" && git push origin main"
# alias pg="git pull origin main"

alias lun="launchctl unload ~/Library/LaunchAgents/com.q.custom_start.plist"
alias lre="launchctl remove ~/Library/LaunchAgents/com.q.custom_start.plist"
alias llo="launchctl load ~/Library/LaunchAgents/com.q.custom_start.plist"

alias yt='yt-dlp -f "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]/bv*+ba/b" -P ~/Desktop/'
alias ip="echo \"LAN: \$(ipconfig getifaddr en7)\nWLN: \$(ipconfig getifaddr en0)\nNET: \$(curl -s -4 ifconfig.me)\""
alias st='(while true; do for var in / - \\ \|; do echo -en "\r$var"; sleep .1; done; done & SPINNER_PID=$!; PYTHONWARNINGS="ignore" speedtest-cli --simple > /tmp/speedtest_output; kill $SPINNER_PID; wait $SPINNER_PID 2>/dev/null; echo -en "\r\033[K"; cat /tmp/speedtest_output; /bin/rm /tmp/speedtest_output)'

alias aw='yabai -m query --windows | jq ".[].app"' # or other yabai/sketchybar queries for debugging
ct() {
    curl "cheat.sh/$1"
}
wt() {
    curl "wttr.in/$1"
}

alias gc="ghostty +show-config --default --docs > ~/Shelf/ghostty_man_cfg.txt"
