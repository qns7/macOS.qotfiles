# macOS (Sequoia 15.3.2+) Setup 24/25

## General Information

- I do not use hiding or minimizing at all in macOS, which is why I deactivated the correspoding hotkeys completely.

## Keyboard-Setup

...

## Yabai/SKHD/Menuwhere/AltTab

### Caveats

- **Display/Monitor-Setups** : only designed for maximal two displays, internal and 27"1440p (to the left); new/different external monitor would need a few changes.
- **Dependencies** : cliclick, jq, ... [all available on Homebrew] ... keysmith, only-switch (check references again), 

## Sketchybar

![Screenshot 2025-03-27 at 14 20 28](https://github.com/user-attachments/assets/2f9a8f46-c15a-4720-adca-d1534a5c2351)

### Explanation (left to right):
- **Symbol**: indicator if external or internal display is focused (greyed-out if there are empty space, orange if there are fullscreen spaces)
- **Numbers**: number of spaces on focused display . focused space on focused display : number of windows on focused space . number of apps on focused space
- **Text**: focused / active app
- **KC**: KeyboardCleanTool [clickable open/close]
- **SF**: "Use F1, F2, etc. keys as standard function keys" [clickable: toggle]
- **Numbers with one letter**: used swap . used ram : inbuilt storage . external storage . sd card : battery
- '**Behind the notch**': shutdown and restart (event aevtr) [clickable: execute]
- '**Sketchybar e position**': Audio percentage or AI for 'audio interface' : active output device [clickable: open/focus Sonarworks SoundID]
- **Envelope / XX**: indicator for new mails / Thunderbird quit [clickable: open/focus Thunderbird]
- **CAM**: LogiTune [clickable: open/focus]
- **ELG**: Elgato Control Center [clickable: openAndPopUp/quit]
- **REM**: Remote+ [clickable: startServer/quit]
- **CFW**: Cloudflare Warp [clickable: openAndConnect/quit]
- **VPN**: Viscosity [clickable: openAndConnect/quit]
- **Numbers**: date : day of the week : week of the year [clickable: toggle yabai -m config menubar_opacity (0.00/1.00)]

### Indication: ...

## iTerm2

### Hotkey Window

<!-- ![Screenshot 2025-03-29 at 11 50 01](https://github.com/user-attachments/assets/df4c5621-4fc6-40e6-ac33-6e41be3383cc) -->

### Customized btop
