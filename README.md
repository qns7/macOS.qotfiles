# My Custom macOS Setup (Sequoia 15.4+)

## General Information

- This description/readme is just an overview. For all the details please check the dotfiles directly, which get updated very often 😬
- The following applies throughout: `alt = opt(ion)` and hotkeys = shortcuts.
- I only used Windows and Linux all my life - until April 2024. Back then I bought my first MacBook; and since then I am continuously work on my setup, which now I want to share here.
- I do not use macOS' hiding or minimizing at all, which is why I 'deactivated' the correspoding hotkeys completely ([see below](#anchor1).
- I use my Dock at the left side with nothing in there beside the two not-removable stock items Finder and Trash. It is set to autohide with no delay.
- For my mouse setup I use [Yabai](https://github.com/koekeishiya/yabai)'s mouse support features as well as Linearmouse. Every mouse with the widely available 5 buttons layout will work.
- Everywhere I can I use cable versions of my peripherals (or practically devices overall), since personally the wireless hype of the last years makes mostly no sense to me: Batteries die, are bad for the enviroment and the performance is always worse than with their cable counterparts. And I don't care if there is a cable from my keyboard, mouse, speaker, headphones or ... to my computer or the according device(s) involved. As long as all cables are well managed in my setup I am happy. Honestly I like the look of well organized cables more than no cables.
- I don't like using [Raycast](https://www.raycast.com/) or [Alfred](https://www.alfredapp.com/) or something similar since the corresponding inbuilt features like Spotlight and macOS' own Emoji Picker etc are good enough for me.  
  Tipp: Spotlight in use with DuckDuckGo as your default search engine gives you the ability to write for example "yt! Queens of the Stone Age Paper Machete" and by clicking `cmd - b` it will open your default brwoser with the corresponding results on Youtube. There are many such "shebangs" for DuckDuckGo.  
  Another tipp: macOS' Emoji Picker is faster if you use it with the stock hotkey/shortcut `ctrl + cmd - space` or any other other than the "**Press 🌐 key to**" function. My guess is, that the system needs time to check if you are holding or pressing Globe/fn and therefore there occurs the delay so many are annoyed by. Using it with another dedicated hotkey/shortcut isn't as fast as [Raycast](https://www.raycast.com/)'s Emoji Picker, but fast enough for me at least.

## Keyboard Setup

I use a Keychron Q1 (V1, ISO Germany) as my external keyboard beside my laptop since 2022. The qmk keymap I use for macOS (slightly optimized for readability) is  
```
ESC               F1       F2       F3       F4       F5       F6       F7       F8       F9       F10      F11      F12      F13      F14
NUBS ^   1        2        3        4        5        6        7        8        9        0        MINS ß   EQL ´    BSPC              MPLY
TAB      Q        W        E        R        T        Y z      U        I        O        P        LBRC ü   RBRC +                     MPRV
CAPS     A        S        D        F        G        H        J        K        L        SCLN ö   QUOT ä   NUHS #   ENT               MNXT
LSFT     GRV <    Z y      X        C        V        B        N        M        COMM ,   DOT .    SLSH -            RSFT     UP
FN       LALT     LCMD                                         SPC                        RCMD     RALT     FN       LEFT     DOWN     RGHT
-------------------------------------------------------------------FN-LAYER-------------------------------------------------------------------
C(____)           BRID     BRIU     MCTL     F15      F16      F17      MPRV     MPLY     MNXT     MUTE     VOLD     VOLU     S(____)  S(____)
C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  DEL               S(F15)
C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)                    S(F16)
____     C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  PENT              S(F17)
____     C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)  C(____)           ----     PGUP
____     ____     ____                                         C(____)                    ____     ____     ____     HOME     PGDN     END
```
which is meant to mimic the inuilt keyboard with its layout as best as possible.

#### Remarks

1. In `System Settings > Keyboard > Keyboard Shortcuts... > Modifier Keys` I change _Control_ to _Globe/fn_ and _Caps Lock_ to _Control_ for both the inbuilt and the external keyboard. Therefore from now on `CAPS` will be replaced with `CTRL` and `C(____) & ctrl +/- ...` with `FN(____) & fn +/- ...`.
2. To imitate the special functions of the f-row completely with the inbuilt keyboard I use the following three lines in my [Skhd](https://github.com/koekeishiya/skhd) config.  
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
    
    RALT     FN
    -----------------FN-LAYER------------------
                               S(____)  S(____)
                                        S(F15)
                                        S(F16)
                                        S(F17)
    
    
    ```
    where 
    
    `f13` : toggle my inbuilt macbook display on/off (**Brightness**)
    
    `f14` : mute (SwitchAudioSource)
    
    `fn - f13` = `shift - f13` : toggle my desklight on/off (curl/Elgato)
    
    `fn - f14` = `shift - f14` : open/close room correction software ([Sonarworks SoundID Reference](https://www.sonarworks.com/soundid-reference))
    
    `fn - f15` = `shift - f15` : dedicated global play/pause button for music player ([Foobar2000](https://www.foobar2000.org/mac))
    
    `fn - f16` = `shift - f16` : send midi message to change audio output to my speaker (Sendmidi)
    
    `fn - f17` = `shift - f17` : send midi message to change audio output to my headphones (Sendmidi)
    
    `fn + alt - f13` = `shift + alt - f13` : show/hide menubar ([Yabai](https://github.com/koekeishiya/yabai))
    
    `fn + alt - f14` = `shift + alt - f14` : open/close digital audio mixer RME TotalMix FX
    
    `fn + alt - f15` = `shift + alt - f15` : turn guitar setup on (RME TotalMix FX)
    
    `fn + alt - f16` = `shift + alt - f16` : turn guitar and mic off (RME TotalMix FX)
    
    `fn + alt - f17` = `shift + alt - f17` : turn mic on (RME TotalMix FX)
    
4. The option 'Use F1, F2, etc. keys as standard function keys' in `System Settings > Keyboard > Keyboard Shortcuts... > Function Keys` I can easily toggle with an according [Sketchybar](https://github.com/FelixKratz/SketchyBar) item (see below). This only affects the inbuilt keybaord, which honestly is a feature and not a bug in my specfic case.

## Hotkeys / Shortcuts

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

My goal was/is to have a few modifiers (or modifier-pairs) which together with the available "action keys" control my whole system in kind of a layer-like setup:  
`Control`, `Option + Command`, `Option`, `Command` and `Globe/fn`  
That's in theory not that different from the goal of basically every keyboard usage/layout, I agree, but having your own system and building it "from the ground" up seemed logical to me, since I myself can choose placements, priorities and modifier layering / depth while making it very easy for me to experiment, maintain and bugfix quickly (for which I use a specific VS Code Workspace with the file structure this repo has).
Another benefit from this is that one basically doesn't have to achingly remember hotkeys and shortcuts like normally, because choosing and setting them up does half the job for you imho.

<a id="anchor1">Many of the stock macOS' hotkeys/shortcuts I have either deactivated directly in `System Settings > Keyboard > Keyboard Shortcuts...` or I overwrote them with [Skhd](https://github.com/koekeishiya/skhd) either with new functions or with `return`, e.g.:  
`fn + shift - a : return # show launchpad`</a>

I will now list some important hotkey categories with a selection of their according hotkeys - to get an idea of the 'system' - where I deliberately don't list all the ones you can find (and/or the intricacies behind the ones shown) in the dotfiles, because they are mostly too specific to me and my peculiar setup. Features that are basically stock in macOS but mostly remapped I will write **Capitalized And Bold**.
All this (obiously) heavily relies and is based on [Skhd](https://github.com/koekeishiya/skhd) and [Yabai](https://github.com/koekeishiya/yabai) as well as some bash scripting; if other apps are used to achieve the mentioned function/feature/behavior they are mentioned in paranthesis. 

#### Remark

I don't use  [Yabai](https://github.com/koekeishiya/yabai)'s tiling feature instead I just use the floating window managment.  

> Why don't you use the newly available inbuilt window management features of macOS then?

Because they are, like the switching of spaces (virtual desktops), way to slow for me because of their animations which cannot be disabled completely.  
Warning: To use [Yabai](https://github.com/koekeishiya/yabai) to its fullest one has to deactivate SIP (e.g. for fast space switching).

### Window Management ###

```
                                 ...
                                 ...
                                 ...         ü        +
CTRL                             ...         ä        #
                                 ...                  UP
         (LALT)   (LCMD)         ...         LEFT     DOWN     RGHT
```


`ctrl - up` : fill current(ly focused) window ([Yabai](https://github.com/koekeishiya/yabai))

`ctrl - down` : resize current window to inbuilt (scaled) resolution w/o notch ([Yabai](https://github.com/koekeishiya/yabai))

`ctrl - left` : snap current window left half ([Yabai](https://github.com/koekeishiya/yabai))

`ctrl - right` : snap current window right half ([Yabai](https://github.com/koekeishiya/yabai))

`ctrl - ä` : snap current window bottom left quarter ([Yabai](https://github.com/koekeishiya/yabai))

`ctrl - #` : snap current window bottom right quarter ([Yabai](https://github.com/koekeishiya/yabai))

`ctrl - +` : snap current window top right quarter ([Yabai](https://github.com/koekeishiya/yabai))

`ctrl - ü` : snap current window top left quarter ([Yabai](https://github.com/koekeishiya/yabai))

`ctrl + alt - down` : **Center Current Window**

`ctrl + cmd - up` : snap current window top half ([Yabai](https://github.com/koekeishiya/yabai))

`ctrl + cmd - down` : snap current window bottom half ([Yabai](https://github.com/koekeishiya/yabai))

`ctrl + cmd - left` : move current window to previous display ([Yabai](https://github.com/koekeishiya/yabai))

`ctrl + cmd - right` : move current window to next display ([Yabai](https://github.com/koekeishiya/yabai))

### Space and Display Management ###

```
                            
^        1        2        3
                  W        E
                           D
(LSFT)                      
         LALT     LCMD      
```


`alt + cmd - ^` : **App Exposé**

`alt + cmd - 1` : focus previous space on current display ([Yabai](https://github.com/koekeishiya/yabai))

`alt + cmd - 2` : focus next space on current display ([Yabai](https://github.com/koekeishiya/yabai))

`alt + cmd - 3` : **Mission Control**

`alt + cmd - w` : create and focus new space on current display ([Yabai](https://github.com/koekeishiya/yabai))

`shift + alt + cmd - w` : create new space on current display and move current window to newly created space and focus that window ([Yabai](https://github.com/koekeishiya/yabai))

`alt + cmd - e` : change and focus display ([Yabai](https://github.com/koekeishiya/yabai))

`alt + cmd - d` : cycle fullscreen spaces if present or delete empty spaces ([Yabai](https://github.com/koekeishiya/yabai))

### Window (and App) Switching ###

```
ESC
NUBS ^
TAB      Q        W


         LALT     LCMD 
```

`cmd + alt - tab` : **Move Focus To Next Window** (of current app on current(ly visible) spaces on either display)

`cmd - tab / ^ / q / w / esc` : Show windows from applications : All apps, Show windows from Spaces : Visible Spaces, Show windows from screens : Screen showing AltTab, Show minimized windows : Show, Show hidden windows : Show, Show fullscreen windows : Show, Order windows by : Recently Focused First / go up instead of down listwise / quit app / close window / exit listview ([AltTab](https://github.com/lwouis/alt-tab-macos))

`alt - tab / ^ / q / w / esc` : Show windows from applications : All apps, Show windows from Spaces : All Spaces, Show windows from screens : All screens, Show minimized windows : Show, Show hidden windows : Show, Show fullscreen windows : Show, Order windows by : Alphabetical Order / go up instead of down listwise / quit app / close window / exit listview ([AltTab](https://github.com/lwouis/alt-tab-macos))

### General System Control ###

`ctrl - q` : open and/or focus **Notes**

`ctrl - e` : open and focus new **Finder** window at stock folder

`ctrl + cmd - e` : focus **Finder**

`ctrl - t` : Terminal ([iTerm2](https://iterm2.com/) Hotkey Window)

`ctrl + cmd - t` : write date and time at cursor position / textbox, e.g. "07:37, 07.07.37, SUN" ([Keysmith](https://www.keysmith.app/) w/Applescript)

`ctrl - p` : open and/or focus **Passwords**

`ctrl - s` : open and/of focus **Safari**

`ctrl + cmd - s` : open and focus new **Finder** window at Screenshots

`ctrl + alt - s` : open and/or focus **System Settings**

`ctrl + alt + cmd - s` : **Type To Siri**

`ctrl - d` : show/hide Dock using automated mouse movement ([cliclick](https://github.com/BlueM/cliclick))

`ctrl + cmd - d` : **Look Up & Data Detectors / Show Or Hide The Definition Of The Selected Word**

`ctrl + alt - d` : **Show/Hide Desktop**

`ctrl + alt + cmd - d` : open and focus new **Finder** window at Downloads

`ctrl - return/enter` : **Show Contextual Menu**

`ctrl - <` : **Screenshot And Recording Options**

`ctrl - y` : **Save Picture Of Screen As A File** (Thumbnail Dragging For Clipboard Functionality)

`ctrl - x` : **Save Picture Of Selected Area As A File** (Thumbnail Dragging For Clipboard Functionality, Remember Spacebar Usage)

`ctrl - c` : OCR ([TRex](https://github.com/amebalabs/TRex))

`ctrl - v` : open and/or focus [VS Code](https://code.visualstudio.com/docs/setup/mac)

`ctrl + cmd - v` : shorten copied url and paste ([Keysmith](https://www.keysmith.app/) w/Applescript)

`ctrl - b` : open and/or focus [Thunderbird](https://www.thunderbird.net/en-US/thunderbird/all/)

`ctrl - m` : open and/or focus **Audio Midi Setup**

`ctrl - space` : **Spotlight**

`ctrl + cmd - space` : **Show The Character Viewer, From Which You Can Choose Emoji And Other Symbols**

---

`fn - f*` : **F\* / Special Function**

`fn - backspace` : **Forward Delete**

`fn - esc` : toggle keyboard backlight ([OnlySwitch](https://github.com/jacklandrin/OnlySwitch))

`fn - w` : executes custom bash script

`fn - s` : sleep immediately (**Pmset**)

`fn - r` : start/stop Radio ([OnlySwitch](https://github.com/jacklandrin/OnlySwitch))

`fn - t` : Pomodoro Timer 25/5 (x4) ([OnlySwitch](https://github.com/jacklandrin/OnlySwitch))

`fn - f` : **(Native) Fullscreen (Space)**

`fn - y` : restart [Yabai](https://github.com/koekeishiya/yabai)

`fn - x` : reload [Sketchybar](https://github.com/FelixKratz/SketchyBar)

`fn - c` : **Show/Hide Control Center**

`fn - b` : start/stop Background Noise ([OnlySwitch](https://github.com/jacklandrin/OnlySwitch))

`fn - n` : **Show/Hide Notification Center**

`fn - *_arrow` : **Home, PageUp, PageDown, End**

---

`alt - delete` : effectively 'reversing' `alt - backspace` (which should be stock)

`cmd - delete` : effectively 'reversing' `cmd - backspace` (which should be stock)

### Mouse and Trackpad Actions & Gestures

`forwards_button/backwards_button` : "universal back and forward" ([Linearmouse](https://linearmouse.app/))

`ctrl - left_button` : move window ([Yabai](https://github.com/koekeishiya/yabai))

`ctrl - right_button` : resize window ([Yabai](https://github.com/koekeishiya/yabai))

`cmd - right_button` : left menubar content ([Menuwhere](https://manytricks.com/menuwhere/))

`alt - forwards_button` : smart zoom ([Linearmouse](https://linearmouse.app/))

`alt - backwards_button` : `cmd - 0` = often zooms out ([Linearmouse](https://linearmouse.app/))

`alt + cmd - left_button` : `alt + cmd - left_arrow` = often moves to the tab on the left ([Linearmouse](https://linearmouse.app/))

`alt + cmd - right_button` : `alt + cmd - right_arrow`  = often moves to the tab on the right ([Linearmouse](https://linearmouse.app/))

`three-finger-up` : **Mission Control**

`three-finger-down` : **App Exposé**

### Caveats

- **Display/Monitor-Setups** : only designed for maximal two displays, the internal and one external display with 27"1440p (to the left); and a new or different external monitor would need a few adaptions/changes.
- **Dependencies** : many Apps are needed and mentioned all over this readme. Most of them can comfortably be downloaded via Homebrew. They are all free except of Menuwhere (3$). <!-- cliclick, jq, ... [all available on Homebrew] ... yabai, skhd, keysmith, onlyswitch, menuwhere, linearmouse, alttab, ... (check references again), -->

## System Status Bar ([Sketchybar](https://github.com/FelixKratz/SketchyBar))

Screenshot-Example (17:25, 01.05.25, THU):
![Screenshot 2025-05-01 at 17 24 59](https://github.com/user-attachments/assets/d9ab624a-3599-446c-871a-c95dfa9fd40e)
<!-- ![Screenshot 2025-05-01 at 17 21 50](https://github.com/user-attachments/assets/3b09eec3-1714-45f8-bcd3-dbe89d019a28) <!-- ![Screenshot 2025-03-27 at 14 20 28](https://github.com/user-attachments/assets/2f9a8f46-c15a-4720-adca-d1534a5c2351) -->
### Explanation (left to right):
- **_Monitor / MacBook_**: indicator if external or internal display is currently focused (greyed-out if there are empty space, orange if there are fullscreen spaces)
- **Numbers**: number of spaces on current display . current space on current display : number of windows on current space . number of apps on current space
- **Text**: currently focused / active app
- **KC**: [KeyboardCleanTool](https://folivora.ai/keyboardcleantool/) [clickable open/close]
- **FN / SF**: "Use F1, F2, etc. keys as standard function keys" (**check click_fn.sh**) [clickable: toggle]
- **Numbers with one letter**: used swap . used ram : inbuilt storage . external storage . sd card : battery
- '**Behind the notch**': shutdown and restart (**event aevtr**) [clickable: execute]
- '**[Sketchybar](https://github.com/FelixKratz/SketchyBar) e position**': Audio percentage or AI for 'audio interface' : active output device [clickable: open/focus Sonarworks SoundID]
- **_Envelope_ / XX**: indicator for new mails / [Thunderbird](https://www.thunderbird.net/en-US/thunderbird/all/) quit [clickable: open/focus Thunderbird]
- **CAM**: LogiTune [clickable: open/focus]
- **ELG**: Elgato Control Center [clickable: openAndPopUp/quit]
- **REM**: Remote+ [clickable: startServer/quit]
- **CFW**: Cloudflare Warp [clickable: openAndConnect/quit]
- **VPN**: Viscosity [clickable: openAndConnect/quit]
- **Numbers**: date : day of the week : week of the year [clickable: toggle yabai -m config menubar_opacity (0.00/1.00)]

<!-- 
### Indication: ...

## Always & Quickly Available Terminal ---iTerm2

### Hotkey Window

![Screenshot 2025-03-29 at 11 50 01](https://github.com/user-attachments/assets/df4c5621-4fc6-40e6-ac33-6e41be3383cc)

### Customized btop

-->
