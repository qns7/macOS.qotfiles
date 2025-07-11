# main zsh settings, env in ~/.zprofile
# read second

HISTSIZE=100000
SAVEHIST=100000

# echo -n -e "\033]0;zsh.iTerm\007"

setopt PROMPT_SUBST
PROMPT='%F{white}%B[%b%f %F{208}%D{%H:%M:%S}%f %F{white}macBooq%f %U%F{217}%~%f%u%F{white} %B] %b$%f '
PROMPT_EOL_MARK=' ⮐'

export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

eval "$(batman --export-env)"

alias path='echo; tr ":" "\n" <<< "$PATH"; echo;'
alias rm="rm -i"
alias ll="ls --color=auto -lah"

alias h="code ~/.zsh_history"
alias c="clear"
alias t="tty-clock -c -C 7 -D" # "clear && sleep $(echo "1 - $(date +%s.%N | cut -d'.' -f2) / 1000000000" | bc -l) && tty-clock -c -s -C 7 -D" # -s
alias k="clear; cat ~/keyboard_info.txt"
alias a="clear; alias"
alias cal="clear; /opt/homebrew/opt/util-linux/bin/cal -m"
# alias b="macos_background_noise"
alias po="pydoro"
alias poda="cd ~/.local/pipx/venvs/pydoro; source ~/.local/pipx/venvs/pydoro/bin/activate"

alias ff="clear; fastfetch"
alias sf="sudo nano /etc/pam.d/sudo"
alias sv="sudo visudo"

alias s="source ~/.zshrc; clear"
alias m="cmatrix -a -b -u 3"
alias p="btop"

alias up="brewup"
alias uy='echo "$(whoami) ALL=(root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | cut -d " " -f 1) $(which yabai) --load-sa" | sudo tee /private/etc/sudoers.d/yabai; sleep 0.37; yabai --restart-service'

alias ug="cd ~/.config; git pull origin main; sleep 0.37; ~/bin/SYNC; sleep 0.37; git add skhd karabiner yabai sketchybar linearmouse btop bin_scripts zsh_configs .gitignore && git commit -m \"\$(date +'%Y-%m-%d %H:%M:%S')\" && git push origin main" # ; sleep 0.37; git pull origin main"
# alias pg="git pull origin main"

alias lun="launchctl unload ~/Library/LaunchAgents/com.q.custom_start.plist"
alias lre="launchctl remove ~/Library/LaunchAgents/com.q.custom_start.plist"
alias llo="launchctl load ~/Library/LaunchAgents/com.q.custom_start.plist"

alias yt='yt-dlp -S "vcodec:h264,res,acodec:m4a" -P ~/Desktop/' # 'yt-dlp -f "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]/bv*+ba/b" -P ~/Desktop/' # QUICKLOOKable now!
alias ip="echo \"LAN: \$(ipconfig getifaddr en7)\nWLN: \$(ipconfig getifaddr en0)\nNET: \$(curl -s -4 ifconfig.me)\""
alias st='clear; (while true; do for var in / - \\ \|; do echo -en "\r$var"; sleep .1; done; done & SPINNER_PID=$!; PYTHONWARNINGS="ignore" speedtest-cli --simple > /tmp/speedtest_output; kill $SPINNER_PID; wait $SPINNER_PID 2>/dev/null; echo -en "\r\033[K"; cat /tmp/speedtest_output; /bin/rm /tmp/speedtest_output)'
#                 while true; do for var in / - \\ \|; do echo -en "\r$var"; sleep .1; done; done

alias aw='yabai -m query --windows | jq ".[].app"' # or other yabai / sketchybar queries for debugging
ct() {
    curl "cheat.sh/$1"
}
# wt() {
#     curl "wttr.in/$1"
# }
# alias wtt="wt 'Zeiskam?format=%l:+%C+%t,+Sunset+%s'" # Zeiskam?format=3 # Zeiskam?format=%l:+%C+%t # Zeiskam?0
# alias wtt="curl -s 'wttr.in/Zeiskam?format=%l:+%C+%t,+Wind:+%w,+Pressure:+%P,+Sunset:+%S" | sed 's/\([↑↓←→↖↗↘↙]\)/\1 /' | sed -E 's/(Sunset:[ ]?[0-9]{2}:[0-9]{2}):[0-9]{2}/\1/''
wth() {
  (
    current_hour=$(date +%H)
    current_hour=$(( current_hour - current_hour % 3 ))
    while true; do
      for var in / - \\ \|; do echo -en "\r$var"; sleep .1; done
    done & SPINNER_PID=$!
    WEATHER_OUTPUT=$(curl -s "https://wttr.in/${1}?format=j1&m" | jq -r --argjson current_hour "$current_hour" '
      .weather[0].hourly as $today |
      .weather[1].hourly as $tomorrow |
      ($today | map(select((.time | tonumber)/100 >= $current_hour))) +
      ($tomorrow | map(select((.time | tonumber)/100 < $current_hour))) |
      .[] | [
        ( ((.time|tonumber)/100|floor|tostring) | if length == 1 then "0" + . else . end + ":00" ),  # padded time
        (.tempC + "°C"),
        (.windspeedKmph + " km/h"),
        (.precipMM + " mm"),
        (.chanceofrain + "%"),
        .weatherDesc[0].value
      ] | @tsv
    ')
    kill $SPINNER_PID 2>/dev/null
    wait $SPINNER_PID 2>/dev/null
    echo -en "\r\033[K"
    lines=()
    while IFS= read -r line; do
      lines+=("$line")
    done <<< "$WEATHER_OUTPUT"
    widths=( 0 0 0 0 0 0 )
    for line in "${lines[@]}"; do
      IFS=$'\t' read -r t tmp w p r desc <<< "$line"
      [[ ${#t}    -gt ${widths[1]} ]] && widths[1]=${#t}
      [[ ${#tmp}  -gt ${widths[2]} ]] && widths[2]=${#tmp}
      [[ ${#w}    -gt ${widths[3]} ]] && widths[3]=${#w}
      [[ ${#p}    -gt ${widths[4]} ]] && widths[4]=${#p}
      [[ ${#r}    -gt ${widths[5]} ]] && widths[5]=${#r}
      [[ ${#desc} -gt ${widths[6]} ]] && widths[6]=${#desc}
    done
    for line in "${lines[@]}"; do
      IFS=$'\t' read -r t tmp w p r desc <<< "$line"
      printf "%*s | %*s | %*s | %*s | %*s | %-*s\n" \
        "${widths[1]}" "$t" \
        "${widths[2]}" "$tmp" \
        "${widths[3]}" "$w" \
        "${widths[4]}" "$p" \
        "${widths[5]}" "$r" \
        "${widths[6]}" "$desc"
    done
  )
}
alias wt='clear; wth "49.2303,8.2505"'
# alias wt='clear; wth "49.2303485,8.2504211"'
# alias wt='clear; wth "49.23031918078996,8.250524609839939"'
# alias wt='clear; wth "Zeiskam"'
# alias wt='clear; wth "NYC"'
# alias wt="clear; wth "~49.2359868,8.2454157"" # Zeiskam"

alias gc="ghostty +show-config --default --docs > ~/Shelf/ghostty_man_cfg.txt"
alias ww="wakeonlan F0:76:1C:D2:7F:C7"

alias qu="cd ~/Qobuz-DL && git reset --hard HEAD && git pull origin main && echo '-------------------------------> update APP-ID, SECRET & TOKEN !!'"
# alias qs="cd ~/Qobuz-DL && npm audit fix && npm i && npm run dev" # sleep, close terminal, open http://localhost:3000 in firefox...
alias qs="cd ~/Qobuz-DL && git restore package-lock.json && git pull && npm audit fix && npm i && npm run dev" # sleep, close terminal, open http://localhost:3000 in firefox...

# Created by `pipx` on 2025-05-06 15:57:21
export PATH="$PATH:/Users/q/.local/bin"

alias tb="toggle_brightness"
alias qaa="osascript ~/bin/quit_all_apps.scpt"

# export PATH="/opt/homebrew/opt/util-linux/bin:$PATH"
# export PATH="/opt/homebrew/opt/util-linux/sbin:$PATH"
