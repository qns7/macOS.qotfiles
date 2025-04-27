# macOS (Sequoia 15.4+) Setup 2025

## General Information

- I used Windows and Linux only all my life until April 2024 when I bought my first MacBook. Since then I am continuously working on my personal setup and want to share the process here.
- I do not use macOS' hiding or minimizing at all, which is why I 'deactivated' (see below) the correspoding hotkeys completely.
- This description/readme is just an overview, for all the details please check the dotfiles directly.
- I don't like using Raycast or Alfred or something similar since the corresponding inbuilt features like Spotlight and macOS' own Emoji Picker are good enough for me. Tipp: Spotlight in use with DuckDuckGo as your default search engine gives you the ability to write for example "yt! Queens of the Stone Age Paper Machete" and by clicking `cmd - b` it will open your default brwoser with the corresponding results on Youtube. There are many such "shebangs" for DuckDuckGo.
- The following applies throughout: `alt = opt`
- ...

## Keyboard Setup

I use a Keychron Q1 (V1, ISO Germany) as my external keyboard beside my laptop since 2022. Here is the qmk keymap I use for macOS (slightly optimized for readability) is

```
ESC               F1       F2       F3       F4       F5       F6       F7       F8       F9       F10      F11      F12      F13      F14
NUBS ^   1        2        3        4        5        6        7        8        9        0        MINS ß   EQL ´    BSPC              MPLY
TAB      Q        W        E        R        T        Y z      U        I        O        P        LBRC ü   RBRC +                     MPRV
CAPS     A        S        D        F        G        H        J        K        L        SCLN ö   QUOT ä   NUHS #   ENT               MNXT
LSFT     GRV <    Z y      X        C        V        B        N        M        COMM ,   DOT .    SLSH -            RSFT     UP
MO(FN)   LOPT     LCMD                                         SPC                        RCMD     ROPT     MO(FN)   LEFT     DOWN     RGHT
---------------------------------------------------------------------------------------------------------------------------------------------
C(____)           BRID     BRIU     MCTL     F15      F16      F17      MPRV     MPLY     MNXT     MUTE     VOLD     VOLU     S(____)  S(____)
C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  DEL               S(F15)
C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)                    S(F16)
____     C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  PENT              S(F17)
____     C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)           ----     PGUP
____     ____     ____                                         C(____)                    ____     ____     ____     HOME     PGDN     END
```

which is meant to mimic the inuilt keyboard with its layout as best as possible.

### Remarks

1. In `System Settings > Keyboard > Keyboard Shortcuts... > Modifier Keys` I change _Control_ to _Globe/fn_ and _Caps Lock_ to _Control_ for both the inbuilt and the external keyboard. Therefore from now on `CAPS` will be replaced with `CTRL` and `C(____)` with `FN(____)`.
2. To imitate the special functions of the f-row completely with the inbuilt keyboard I use the following three lines in my skhd config.
```
f15 : skhd -k "0xB1" # spotlight
f16 : skhd -k "0xB0" # dictation
f17 : skhd -k "0xB2" # do not disturb
```
3. The additional keys on the far right of the Q1 I use as follows
```
F13      F14
         MPLY
         MPRV
         MNXT


---------------
S(____)  S(____)
         S(F15)
         S(F16)
         S(F17)


```
where 
```
...
```
4. The option "Use F1, F2, etc. keys as standard function keys" in `System Settings > Keyboard > Keyboard Shortcuts... > Function Keys` I can easily toggle with an according Sketchybar item (see below).

## Hotkeys / Shortcuts ---SKHD/Yabai ---/Menuwhere/AltTab

Since the _Control_ key has basically no function in macOS other than the Terminal I use it as my main "appswitcher-key" and for other stuff, which I'll come to later, while dedicating the few system functions & features which use the _Control_ key in macOS' stock config to other hotkeys/shortcuts and while using 

```
.blacklist [
"Ghostty"
"iTerm2"
"Terminal"
"Windows App"
]
```

in my skhdrc to ensure a functioning _Control_ key where I need it.

Many of the stock macOS' hotkeys/shortcuts I have either deactivated directly in `System Settings > Keyboard > Keyboard Shortcuts...` or I overwrote them with skhd either with new functions or with `return`, e.g.: 

`fn + shift - a : return # show launchpad`

My goal was/is to have three modifiers (or modifier-pairs) which together with the available action keys control my whole system:
_Control_, _Globe/fn_ and _Option+Command_.

I will now list some important hotkey categories with a selection of their according hotkeys - to get an idea of the 'system' - I deliberately don't list all the ones you can find in the dotfiles, because they are mostly too specific to me and my peculiar setup. Features that are basically stock in macOS but mostly remapped I will write **Capitalized And Bold**. This (obiously) heavily relies and is based on skhd and yabai as well as some bash scripting; if other apps are used to achieve the function/feature/behavior they are mentioned in paranthesis.

### space and display management ###

```
                            
^        1        2        3
                  W        E
                           D
(LSFT)                      
         LOPT     LCMD      
```


`alt + cmd - ^` : **App Exposé**

`alt + cmd - 1` : focus previous space on currently focused display

`alt + cmd - 2` : focus next space on currently display

`alt + cmd - 3` : **Mission Control**

`alt + cmd - e` : change and focus display

`alt + cmd - w` : create and focus new space

`shift + alt + cmd - w` : create new space and move current window to newly created space and focus

`alt + cmd - d` : cycle fullscreen spaces if present or delete empty spaces

### window management ###

```
                                 ...
                                 ...
                                 ...         ü        +
CTRL                             ...         ä        #
                                 ...                  UP
                  (LCMD)         ...         LEFT     DOWN     RGHT
```


`ctrl - up` : fill current window

`ctrl - down` : resize current window to inbuilt resolution w/o notch

`ctrl - left` : snap current window left half

`ctrl - right` : snap current window right half

`ctrl - ä` : snap current window bottom left quarter

`ctrl - #` : snap current window bottom right quarter

`ctrl - +` : snap current window top right quarter

`ctrl - ü` : snap current window top left quarter

`ctrl + cmd - up` : snap current window top half

`ctrl + cmd - down` : snap current window bottom half

`ctrl + cmd - left` : move current window to previous display

`ctrl + cmd - right` : move current window to next display

`ctrl + alt - down` : **Center current Window**

...

### app and window switching

...

### general system control ###

`ctrl - q` : open and/or focus Notes

`ctrl - e` : open and focus new Finder window at stock folder

`ctrl + cmd - e` : focus Finder

`ctrl - t` : Terminal (iTerm2 Hotkey Window)

`ctrl + cmd - t` : write date and time at cursor position (text field) like "20:54, 26.04.25, SAT"

`ctrl - p` : open and/or focus Passwords

`ctrl - s` : open and/of focus Safari

`ctrl + cmd - s` : open and focus new Finder window at Screenshots

`ctrl + alt - s` : open and/or focus System Settings

`ctrl + alt + cmd - s` : **Type to Siri**

`ctrl - d` : show/hide Dock

`ctrl + cmd - d` : **Look up & data detectors / Show or hide the definition of the selected word**

`ctrl + alt - d` : **Show/Hide Desktop**

`ctrl + alt + cmd - d` : open and focus new Finder window at Downloads

`ctrl - return/enter` : **Show Contextual Menu**

`ctrl - <` : **Screenshot and Recording Options**

`ctrl - y` : **Save picture of screen as a file (thumbnail dragging for clipboard functionality)**

`ctrl - x` : **Save picture of selected area as a file  (thumbnail dragging for clipboard functionality, remember spacebar usage)**

`ctrl - c` : OCR (TRex)

`ctrl - v` : open and/or focus VS Code

`ctrl + cmd - v` : shorten copied url and paste (uses Keysmith/Applescript)

`ctrl - b` : open and/or focus Thunderbird

`ctrl - m` : open and/or focus Audio Midi Setup

`ctrl - space` : **Spotlight**

`ctrl + cmd - space` : **Show the character viewer, from which you can choose emoji and other symbols**

---

`fn - fX` : **FX / Special Function**

`fn - backspace` : **Forward Delete**

`fn - esc` : toggle keyboard backlight (uses Only-Switch)

`fn - w` : executes custom bash script

`fn - s` : **Sleep immediately**

`fn - r` : start/stop radio (uses Only-Switch)

`fn - t` : pomodoro timer 25/5 (x4) (uses Only-Switch)

`fn - f` : **(native) Fullscreen (Space)**

`fn - y` : restart yabai

`fn - x` : reload sketchybar

`fn - c` : **Show/Hide Control Center**

`fn - b` : start/stop background noise (soft rain) (uses Only-Switch)

`fn - n` : **Show/Hide Notification Center**

`fn - arrows` : **Home, PageUp, PageDown, End**

---

`alt - delete` : 'reversing' `alt - backspace` (which should be stock)

`cmd - delete` : 'reversing' `cmd - backspace` (which should be stock)

### mouse actions ###

...

### Caveats

- **Display/Monitor-Setups** : only designed for maximal two displays, internal and one external 27"1440p (to the left); new/different external monitor would need a few adaptions/changes.
- **Dependencies** : cliclick, jq, ... [all available on Homebrew] ... keysmith, only-switch (check references again), 

## System Status Bar ---Sketchybar 

![Screenshot 2025-03-27 at 14 20 28](https://github.com/user-attachments/assets/2f9a8f46-c15a-4720-adca-d1534a5c2351)

### Explanation (left to right):
- **_Monitor / MacBook_**: indicator if external or internal display is focused (greyed-out if there are empty space, orange if there are fullscreen spaces)
- **Numbers**: number of spaces on focused display . focused space on focused display : number of windows on focused space . number of apps on focused space
- **Text**: focused / active app
- **KC**: KeyboardCleanTool [clickable open/close]
- **FN / SF**: "Use F1, F2, etc. keys as standard function keys" [clickable: toggle]
- **Numbers with one letter**: used swap . used ram : inbuilt storage . external storage . sd card : battery
- '**Behind the notch**': shutdown and restart (event aevtr) [clickable: execute]
- '**Sketchybar e position**': Audio percentage or AI for 'audio interface' : active output device [clickable: open/focus Sonarworks SoundID]
- **_Envelope_ / XX**: indicator for new mails / Thunderbird quit [clickable: open/focus Thunderbird]
- **CAM**: LogiTune [clickable: open/focus]
- **ELG**: Elgato Control Center [clickable: openAndPopUp/quit]
- **REM**: Remote+ [clickable: startServer/quit]
- **CFW**: Cloudflare Warp [clickable: openAndConnect/quit]
- **VPN**: Viscosity [clickable: openAndConnect/quit]
- **Numbers**: date : day of the week : week of the year [clickable: toggle yabai -m config menubar_opacity (0.00/1.00)]

### Indication: ...

## Always & Quickly Available Terminal ---iTerm2

### Hotkey Window

<!-- ![Screenshot 2025-03-29 at 11 50 01](https://github.com/user-attachments/assets/df4c5621-4fc6-40e6-ac33-6e41be3383cc) -->

### Customized btop
