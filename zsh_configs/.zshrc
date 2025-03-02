# main zsh settings, env in ~/.zprofile
# read second

HISTSIZE=10000
SAVEHIST=10000

# echo -n -e "\033]0;zsh.iTerm\007"

setopt PROMPT_SUBST
PROMPT='%F{white}%B[%b%f %F{208}%D{%I:%M:%S}%f %F{white}m@qBook%f %U%F{217}%~%f%u%F{white} %B] %b$%f '
PROMPT_EOL_MARK='🐧'

export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

alias c="clear"
alias ll="ls -lah"
alias path='echo; tr ":" "\n" <<< "$PATH"; echo;'
alias h="code ~/.zsh_history"
alias k="cat ~/keyboard_info.txt"

alias m="cmatrix -a -b -u 3"

alias up="brewup"
alias uy='echo "$(whoami) ALL=(root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | cut -d " " -f 1) $(which yabai) --load-sa" | sudo tee /private/etc/sudoers.d/yabai'
alias ug="~/bin/SYNC; sleep 0.37; cd ~/.config; sleep 0.1; git add skhd yabai sketchybar linearmouse btop bin_scripts zsh_configs .gitignore && git commit -m \"\$(date +'%Y-%m-%d %H:%M:%S')\" && git push origin main"

alias lun="launchctl unload ~/Library/LaunchAgents/com.q.custom_start.plist"
alias lre="launchctl remove ~/Library/LaunchAgents/com.q.custom_start.plist"
alias llo="launchctl load ~/Library/LaunchAgents/com.q.custom_start.plist"

alias yt='yt-dlp -f "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]/bv*+ba/b"'
alias ip="echo \"LAN: \$(ipconfig getifaddr en7)\nWLN: \$(ipconfig getifaddr en0)\nNET: \$(curl -s -4 ifconfig.me)\""
alias st='PYTHONWARNINGS="ignore" speedtest-cli --simple'
alias aw='yabai -m query --windows | jq ".[].app"'

alias gc="ghostty +show-config --default --docs > ~/Shelf/ghostty_man_cfg.txt"
