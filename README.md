<!-- # My Custom macOS Setup (Sequoia 15.4+)

## General Information & Philosophy

- This description/readme is just an overview. For all the details please check the dotfiles directly. Which get updated very often. 😬
- The following applies throughout: `alt = opt(ion)` and hotkeys = shortcuts.
- I only used Windows and Linux all my life - until April 2024. Back then I bought my first MacBook; and since then I am continuously work on my setup, which now I want to share here.
- I do not use macOS' hiding or minimizing at all, which is why I 'deactivated' the correspoding hotkeys completely ([see below](#anchor1)).
- I use my Dock at the left side with nothing in there beside the two not-removable stock items Finder and Trash. It is set to autohide with no delay ([Onyx](https://titanium-software.fr/en/onyx.html) or using a terrminal command).
- For my mouse setup I use [Yabai](https://github.com/koekeishiya/yabai)'s [mouse support features[(https://github.com/koekeishiya/yabai/wiki/Configuration#mouse-support) as well as [Linearmouse](https://linearmouse.app/). Every mouse with the widely available "5 buttons layout" will work.
- Everywhere I can I use cable versions of my peripherals or even devices in general, since personally the general wireless hype makes mostly no sense to me: Batteries die, are bad for the environment and the performance is always worse than with their cable counterparts. And I don't care if there is a cable from my keyboard, mouse, speaker, headphones or ... to my computer or the according device(s) involved. As long as all cables are well managed I am happy. Honestly.. I like the look of well organized cables more than no cables.
- I don't like using [Raycast](https://www.raycast.com/) or [Alfred](https://www.alfredapp.com/) or something similar since the corresponding inbuilt features like Spotlight and macOS' own Emoji Picker etc are good enough for me.  
  Tipp: Spotlight in use with DuckDuckGo as your default search engine gives you the ability to write for example "yt! Queens of the Stone Age Paper Machete" and by clicking `cmd - b` it will open your default brwoser with the corresponding results on Youtube. There are many such "shebangs" for DuckDuckGo.  
  Another tipp: macOS' Emoji Picker is faster if you use it with the stock hotkey `ctrl + cmd - space` or any other custom hotkey other than macOS' "**Press 🌐 key to**" function. My guess is, that the system needs time to check if you are holding or pressing Globe/fn and therefore there occurs this slight delay so many are annoyed by. Using it with another dedicated hotkey isn't as fast as [Raycast](https://www.raycast.com/)'s Emoji Picker, but fast enough for me.

## Keyboard Setup

I use a Keychron Q1 (V1, ISO Germany) as my external keyboard beside my laptop when I'm at home since 2022. The qmk keymap I use for macOS (slightly adjusted for readability) is  -->

# "maqOS/macOSmax" : My Custom macOS Setup (Sequoia 15.4+)

VERY BIG UNDER CONSTRUCTION !! all over the place and messy for a few days now 10:37, 07.05.25, WED

## General Information & Philosophy

- This description/readme is just an overview. For all the details please check the dotfiles directly, which get updated very often 😬
- The following applies throughout: `alt = opt(ion)` and hotkeys = shortcuts.
- I only used Windows and Linux all my life - until April 2024. Back then I bought my first MacBook; and since then I am continuously working on my setup, which I now want to share here.
- I do not use macOS' hiding or minimizing at all, which is why I "deactivated" the corresponding hotkeys completely ([see below](#anchor1)).
- I use my Dock at the left side with no permanent item in there besides the two non-removable stock items Finder and Trash. It is set to autohide with no delay ([OnyX](https://titanium-software.fr/en/onyx.html) or using the according terminal command).
- For my mouse setup I use [Yabai](https://github.com/koekeishiya/yabai)'s [mouse support features](https://github.com/koekeishiya/yabai/wiki/Configuration#mouse-support) as well as [LinearMouse](https://linearmouse.app/). Every mouse with the widely available "5 buttons layout" will work.
- Everywhere I can I use cable versions of my peripherals (or even of all my devices in general), since personally the general wireless hype makes mostly no sense to me: Batteries die, are bad for the environment and the performance is always worse than with their cable counterparts. And I don't care if there is a cable from my keyboard, mouse, speaker, headphones or ... to my computer or the corresponding device(s) involved. As long as all cables are well managed I am happy. Honestly... I like the look of well-organized cables more than no cables.
- I don't like using [Raycast](https://www.raycast.com/), [Alfred](https://www.alfredapp.com/) or some similar "launcher" since the corresponding inbuilt macOS' features like Spotlight and the Emoji Picker <!-- etc. -->are good enough for me.  
  First Tip: Spotlight in use with DuckDuckGo as your default search engine gives you the ability to write for example "yt! Queens of the Stone Age Paper Machete" and by pressing `cmd - b` it will open your default browser with the corresponding results on YouTube. There are many such "shebangs" for DuckDuckGo.  
  Second Tip: macOS' Emoji Picker is faster if you use it with the stock hotkey `ctrl + cmd - space` or any other custom hotkey other than macOS' "**Press 🌐 key to**" function. My guess is that the system needs time to check if you are holding or pressing Globe/fn and therefore there occurs this slight delay so many are annoyed by. Using it with another dedicated hotkey isn't as fast as [Raycast](https://www.raycast.com/)'s Emoji Picker of [Rocket](https://matthewpalmer.net/rocket/) for example, but fast enough for me.
- Many people praise the use of the so called hyper key (=`ctrl + shift + alt + cmd`) for app launching and other stuff, where they use [BetterTouchTool](https://folivora.ai/), [Keyboard Maestro](https://www.keyboardmaestro.com/main/), [Karabiner Elements](https://karabiner-elements.pqrs.org/), [Skhd](https://github.com/koekeishiya/skhd) or ... to remap the _Capslock_ key to this hyper key and open/focus apps with it. I use the _Control_ key for this, cf. ..., and the hyper key I use for different special cases and other stuf. _Something about the use of the "hyper" key in my setup.._ to react to the many guys praising this one.. : Use-example: hyper - tab : "macOS' next window" and then my version: alt + cmd - tab : skhd -k "hyper - tab"; cliclick_focus. Perhaps this not here but placing it at the hotkeys chapter.
  Another tip: Check out [Rcmd](https://lowtechguys.com/rcmd/) which seems to be a cool solution too.
- I also use(d) [Keysmith](https://www.keysmith.app/) quite a bit for quick debugging and testing, since it's super convenient, but in the end I can implement all stuff I came across within a year via bash or osascript (Applescript) using jq, cliclick and all these awesome Homebrew formulaes. Most of the time it's even faster this way. _THE SAME WILL PROBABLY BE TRUE FOR ONLYSWITCH IN THE FUTURE. ICE DANN JEDOCH ALS MENUBAR-HIDER._
- I want to have my setup quite minimal in the sense that I want to use as few as possible apps<!--programs --> and ressources. That said, I DO use quite a few of apps to get my setup to the state I want it to be. 😂 It would be cool to have ONE all-in-one app, preferably just a "formulae" like [Skhd](https://github.com/koekeishiya/skhd) + [Yabai](https://github.com/koekeishiya/yabai), which has no UI, but a very clean way to manage the config in dedicated dotfiles. That would be awesome.. // add LIST: ... AND merge it with the dependencies at the end...
- Mentioning unpresent clock in sketchybar and hotkey window etc...
- [Sketchybar](https://github.com/FelixKratz/SketchyBar) replaces the stock menubar and shows the system information I want to see up there while also having some other important "active"/clickable features I like. The stock menubar is set to autohide and also made invisable using yabai. The visability is quickly toggleable so that the menubar is still usable if needed. ... Also: 1. the "System Status Bar" is only visable on the inbuilt screen, while the external screen has no permanent bar at all. 2. Additionally you gain a few pixels under the notch on the inbuilt screen. ...
- ice ersetzung durch onlyswitch etc... mentioning. Und wie onylswitch eine app ist, die viele andere ersetzt. vielleicht selbst aktiv werden und eine traumapp bauen? macOS+/macOSmax(like q4max?). 20:04, 06.05.25, TUE: NO, switched back to ice and custom solutions for the rest!
- Mention BatFi and other apps?
- ...

## Keyboard Setup

I use a Keychron Q1 (V1, ISO Germany) as my external keyboard beside my laptop when I'm at home since 2022. The qmk keymap I use for macOS (slightly adjusted for readability) is
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
which is meant to mimic the inbuilt keyboard with its layout as best as possible.

#### Remarks

1. In `System Settings > Keyboard > Keyboard Shortcuts... > Modifier Keys` I change _Control_ to _Globe/fn_ and _Caps Lock_ to _Control_ for both the inbuilt and the external keyboard. Therefore from now on `CAPS` will be replaced with `CTRL` and `C(____)` with `FN(____)`.
2. To imitate the special functions of the f-row completely with the inbuilt keyboard I use the following three lines in my [Skhd](https://github.com/koekeishiya/skhd) config (skhdrc).  
    ```
    f15 : skhd -k "0xB1" # spotlight
    f16 : skhd -k "0xB0" # dictation
    f17 : skhd -k "0xB2" # do not disturb
    ```
3. The additional keys on the far right of the Q1 I use as follows:
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
    
    `f13` : toggle inbuilt MacBook display ([Brightness](https://github.com/nriley/brightness))
    
    `f14` : mute ([Switchaudio-OSX](https://github.com/deweller/switchaudio-osx))

   ---
    
    `fn - f13` = `shift - f13` : toggle my desklight on/off (**Curl** w/ElgatoKeylight)
    
    `fn - f14` = `shift - f14` : open/close room correction software ([Sonarworks SoundID Reference](https://www.sonarworks.com/soundid-reference))
    
    `fn - f15` = `shift - f15` : dedicated global play/pause button for music player ([cliclick](https://github.com/BlueM/cliclick) & [Foobar2000](https://www.foobar2000.org/mac))
    
    `fn - f16` = `shift - f16` : send MIDI message to change audio output to my speaker in [Sonarworks SoundID Reference](https://www.sonarworks.com/soundid-reference) ([Sendmidi](https://github.com/gbevin/SendMIDI))
    
    `fn - f17` = `shift - f17` : send MIDI message to change audio output to my headphones in [Sonarworks SoundID Reference](https://www.sonarworks.com/soundid-reference) ([Sendmidi](https://github.com/gbevin/SendMIDI))

   ---
    
    `fn + alt - f13` = `shift + alt - f13` : open/close digital audio mixer RME TotalMix FX (Babyface Pro) <!-- show/hide menubar ([Yabai](https://github.com/koekeishiya/yabai)) -->
    
    `fn + alt - f14` = `shift + alt - f14` : ... tmx mute?
    
    `fn + alt - f15` = `shift + alt - f15` : turn guitar setup on (RME TotalMix FX)
    
    `fn + alt - f16` = `shift + alt - f16` : turn guitar and mic off (RME TotalMix FX)
    
    `fn + alt - f17` = `shift + alt - f17` : turn mic on (RME TotalMix FX)
    
5. The option "Use F1, F2, etc. keys as standard function keys" in `System Settings > Keyboard > Keyboard Shortcuts... > Function Keys` I can easily toggle with an according [SketchyBar](https://github.com/FelixKratz/SketchyBar) item ([see below](#anchor2)). This only affects the inbuilt keyboard, which honestly is a feature and not a bug in my specific case.

## Hotkeys

Since the _Control_ key has basically no function in macOS other than inside the Terminal I use it as my main "appswitcher-key" and for other stuff, which I'll come to later, while dedicating the few system functions & features which use the _Control_ key in macOS' stock config to other hotkeys (remapping).  
And while using  
```
.blacklist [
"Ghostty"
"iTerm2"
"Terminal"
"Windows App"
]
```
in my skhdrc I ensure a functioning _Control_ key where I need it.

My goal is to have a few modifiers (or modifier-pairs) which together with the available "action keys" control my whole system in kind of a layer-like setup:  
`Control`, `Option + Command`, `Option`, `Command` and `Globe/fn`  
That's in theory not at all different from the goal of basically every keyboard usage or "layout", I agree, but having your own system and building it "from the ground up" seemed logical to me, since I myself can choose placements, priorities and modifier layering and depth; while making it very easy for me to experiment, maintain and bugfix quickly (for which I use a specific VS Code Workspace with the file structure this repo has).  
Another benefit of this is that one basically doesn't have to achingly remember hotkeys as usual, because choosing and setting them up does half the job for you imho.  

One main feature of the whole setup is that the mouse follows the focus and also the focus follows the mouse, which makes everything super fast. ([Yabai](https://github.com/koekeishiya/yabai) & [AltTab](https://github.com/lwouis/alt-tab-macos))

<a id="anchor1"></a>  

Many of the stock macOS' hotkeys I have either deactivated directly in `System Settings > Keyboard > Keyboard Shortcuts...` or (in case of the ones that are "stock" and not changeable UI-wise) I overwrote them with [Skhd](https://github.com/koekeishiya/skhd) either with new functions or with `return`, e.g.: `alt + cmd - h : return # hide others` <!-- `fn + shift - a : return # show launchpad` -->

I will now list some important hotkey-categories with a selection of their according hotkeys - to get an idea of the "system" - where I deliberately don't list all the ones (and/or the intricacies behind the ones shown) you can find in the dotfiles, because they are mostly too specific to me and my peculiar setup.  
Features that are basically stock in macOS but mostly remapped I will write **Capitalized And Bold**.  
All this (obviously) heavily relies and is based on [Skhd](https://github.com/koekeishiya/skhd) and [Yabai](https://github.com/koekeishiya/yabai) as well as some <!--bash -->scripting; if other apps are used to achieve the desired function/feature/behavior they are mentioned in parentheses.  

#### Remark

I don't use  [Yabai](https://github.com/koekeishiya/yabai)'s tiling feature, instead I just use the floating window management.  

> Why don't you use the newly available inbuilt window management features of macOS then?

Because they are, like the switching of spaces (virtual desktops), way too slow for me because of their animations which cannot be disabled completely.  
Warning: To use [Yabai](https://github.com/koekeishiya/yabai) to its fullest one has to deactivate SIP (e.g. for fast space switching).

---
### Window Management ###
---

```
                                 ...
                                 ...
                                 ...         ü        +
CTRL                             ...         ä        #
                                 ...                  UP
         (LALT  /  LCMD)         ...         LEFT     DOWN     RGHT
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

---
### Space and Display Management ###
---

```
                            
^        1        2        3
                  W        E
(CTRL)                     D

         LALT  &  LCMD      
```


`alt + cmd - ^` : **App Exposé**

`alt + cmd - 1` : focus previous space on current display ([Yabai](https://github.com/koekeishiya/yabai))

`alt + cmd - 2` : focus next space on current display ([Yabai](https://github.com/koekeishiya/yabai))

`alt + cmd - 3` : **Mission Control**

`alt + cmd - w` : create and focus new space on current display ([Yabai](https://github.com/koekeishiya/yabai))

`<!--shift-->ctrl + alt + cmd - w` : create new space on current display and move current window to newly created space and focus that window ([Yabai](https://github.com/koekeishiya/yabai))

`alt + cmd - e` : change and focus display ([Yabai](https://github.com/koekeishiya/yabai))

`alt + cmd - d` : cycle fullscreen spaces if present or delete empty spaces ([Yabai](https://github.com/koekeishiya/yabai))

---
### Window (and App) Switching ###
---

```
ESC
NUBS ^
TAB      Q        W


         LALT &|/ LCMD 
```

`cmd + alt - tab` : **Move Focus To Next Window** (of current app on current(ly visible) spaces on either display)

`cmd - tab / ^ / q / w / esc` : Show windows from applications : All apps, Show windows from Spaces : Visible Spaces, Show windows from screens : Screen showing AltTab, Show minimized windows : Show, Show hidden windows : Show, Show fullscreen windows : Show, Order windows by : Recently Focused First / go up instead of down listwise / quit app / close window / exit listview ([AltTab](https://github.com/lwouis/alt-tab-macos))

`alt - tab / ^ / q / w / esc` : Show windows from applications : All apps, Show windows from Spaces : All Spaces, Show windows from screens : All screens, Show minimized windows : Show, Show hidden windows : Show, Show fullscreen windows : Show, Order windows by : Alphabetical Order / go up instead of down listwise / quit app / close window / exit listview ([AltTab](https://github.com/lwouis/alt-tab-macos))

---
### General System Control ###
---

`ctrl - q` : open and/or focus **Notes**

`ctrl - e` : open and focus new **Finder** window at stock folder

`ctrl + cme - e` : focus any background app to be able to use Skhd's hotkeys while in a blacklisted app (**Shortcuts w/Applescript**)

`ctrl + alt - e` : focus **Finder**

`ctrl - t` : Terminal ([iTerm2](https://iterm2.com/) Hotkey Window)

`ctrl + cmd - t` : write date and time at cursor position / textbox, e.g. "07:37, 07.07.37, SUN" (**Applescript**)

`ctrl - p` : open and/or focus **Passwords**

`ctrl - s` : open and/of focus **Safari**

`ctrl + cmd - s` : open and focus new **Finder** window at Screenshots

`ctrl + alt - s` : open and/or focus **System Settings**

`ctrl + alt + cmd - s` : **Type To Siri**

`ctrl - d` : show/hide Dock using automated mouse movement ([cliclick](https://github.com/BlueM/cliclick)) - doesn't work in native fullscreens

`ctrl + cmd - d` : **Look Up & Data Detectors / Show Or Hide The Definition Of The Selected Word**

`ctrl + alt - d` : **Show/Hide Desktop**

`ctrl + alt + cmd - d` : open and focus new **Finder** window at Downloads

`ctrl - return/enter` : **Show Contextual Menu**

`ctrl - <` : **Screenshot And Recording Options**

`ctrl - y` : **Save Picture Of Screen As A File** (Thumbnail Dragging For Clipboard Functionality)

`ctrl - x` : **Save Picture Of Selected Area As A File** (Thumbnail Dragging For Clipboard Functionality, Remember Spacebar Usage)

`ctrl - c` : ocr ([TRex](https://github.com/amebalabs/TRex))

`ctrl - v` : open and/or focus code editor ([VS Code](https://code.visualstudio.com/docs/setup/mac))

`ctrl + cmd - v` : shorten copied url and paste (**Applescript**)

`ctrl - b` : open and/or focus mail agent ([Thunderbird](https://www.thunderbird.net/en-US/thunderbird/all/))

`ctrl - m` : open and/or focus **Audio Midi Setup**

`ctrl - space` : **Spotlight**

`ctrl + cmd - space` : **Show The Character Viewer, From Which You Can Choose Emoji And Other Symbols**

---

`fn - esc` : toggle keyboard backlight ([mac-brightnessctl](https://github.com/rakalex/mac-brightnessctl))<!-- or [OnlySwitch](https://github.com/jacklandrin/OnlySwitch))-->

`fn - f*` : **F\* / Special Function**

`fn - backspace` : **(Forward) Delete**

<!-- `fn - w` : executes custom bash script: adjustments to changes triggered by setup changes (desk / mobile) (also cf. yabai signals...) -->

`fn - r` : toggle favorite radio station ([mpv](https://mpv.io/installation/)<!-- or [OnlySwitch](https://github.com/jacklandrin/OnlySwitch)-->)

<!--`fn - t` : pomodoro timer 25/5 (x4) (DIFFERENT! --- [OnlySwitch](https://github.com/jacklandrin/OnlySwitch))-->

`fn - s` : sleep immediately (**Pmset**)

`fn - f` : **(Native) Fullscreen (Space)**

`fn - y` : restart [Yabai](https://github.com/koekeishiya/yabai)

`fn - x` : reload [Sketchybar](https://github.com/FelixKratz/SketchyBar)

`fn - c` : **Show/Hide Control Center**

`fn - b` : toggle **Backgruound Sounds (Rain)** <!--open and/or focus **Safari Webapp** w/[rain.today](https://rain.today/)--> <!--start/stop background noise (**defaults** & **launchctl** or [OnlySwitch](https://github.com/jacklandrin/OnlySwitch))-->

`fn - n` : **Show/Hide Notification Center**

`fn - left/up/down/right` : **Home/PageUp/PageDown/End**
<!-- `fn - *_arrow` : **Home, PageUp, PageDown, End** -->

---

`alt - f1` : decrease inbuilt display brightness incremental like `shift + alt - brightness_down` ([Brightness](https://github.com/nriley/brightness))

`alt - f2` : increase inbuilt display brightness incremental like `shift + alt - brightness_up` ([Brightness](https://github.com/nriley/brightness))

`cmd - f8` : dedicated global play/pause button for music player ([cliclick](https://github.com/BlueM/cliclick) & [Foobar2000](https://www.foobar2000.org/mac))

`alt - f10` :  mute ([Switchaudio-OSX](https://github.com/deweller/switchaudio-osx))

`alt - f11` : `vulome_down`

`alt - f12` : `volume_up`

`hyper - q` : quit all apps (**Applescript**)

`alt - delete` = `alt + fn - backspace` : effectively "reversing" `alt - backspace` (which should be stock)

`cmd - delete` = `cmd + fn - backspace` : effectively "reversing" `cmd - backspace` (which should be stock)

`space` : In Finder: "pimped" quick look ([Folder Preview](https://apps.apple.com/de/app/folder-preview/id6698876601?l=en-GB&mt=12), 2$, new since 18:32, 03.05.25, SAT)

_ADD THE REST OF THE KEPT MACOS HOTKEYS TOO! perhaps even more from other programs/apps?_

---
### Mouse and Trackpad Actions & Gestures
---

`ctrl - left_button` (drag) : move window ([Yabai](https://github.com/koekeishiya/yabai))

`ctrl - right_button` (drag) : resize window ([Yabai](https://github.com/koekeishiya/yabai))

`cmd - right_button` : left menubar content ([Menuwhere](https://manytricks.com/menuwhere/))

`scrollwheel_button / three_finger` : classic "middle_click-functions" like opening and closing tabs in the browser, pasting marked text in the terminal, etc.. ([MiddleClick](https://github.com/artginzburg/MiddleClick))

`shift + scrolling` : horizontal scrolling

`alt (+ shift) + scrolling` : faster (horizontal) scrolling ([Linearmouse](https://linearmouse.app/))

`forwards_button / backwards_button` : "universal back and forward" ([Linearmouse](https://linearmouse.app/))

`alt - forwards_button` : smart zoom ([Linearmouse](https://linearmouse.app/)) (only mouse)

`alt - backwards_button` : `cmd - 0` = often zooms out ([Linearmouse](https://linearmouse.app/))  (only mouse)

`alt + cmd - left_button` = `alt + cmd - left_arrow` : often moves to the tab on the left ([Linearmouse](https://linearmouse.app/)) (only mouse)

`alt + cmd - right_button` = `alt + cmd - right_arrow` : often moves to the tab on the right ([Linearmouse](https://linearmouse.app/)) (only mouse)

`alt + cmd - forwards_button` <!--= `alt + cmd - forwards_button` -->: toggle stock menubar visibility (cf. [last Sketchybar item](#anchor3)) ([Yabai](https://github.com/koekeishiya/yabai)) (only mouse)

`three_finger_up` : **Mission Control** (only trackpad)

`three_finger_down` : **App Exposé** (only trackpad)

---
### Caveats
---

- **Display/Monitor-Setups** : only designed for maximal two displays, the internal and one external display with 27"1440p (to the left); and a new or different external monitor would need a few adaptions and/or changes.
- **Dependencies** : many Apps are needed and mentioned all over this readme. Most of them can comfortably be downloaded via [Homebrew](https://brew.sh/). They are all free except of [Menuwhere](https://manytricks.com/menuwhere/) (3$) and [Folder Preview](https://apps.apple.com/de/app/folder-preview/id6698876601?l=en-GB&mt=12) (2$). <!-- cliclick, jq, ... [all available on Homebrew] ... yabai, skhd, keysmith, onlyswitch, menuwhere, linearmouse, alttab, ... (check references again), -->
- [Brightness](https://github.com/nriley/brightness) has to be ["installed from source"](https://github.com/nriley/brightness/pull/36#issuecomment-2835998750) to work. Installing it via Homebrew the normal way doesn't work.

## System Status Bar ([Sketchybar](https://github.com/FelixKratz/SketchyBar))

Screenshot-Example (17:25, 01.05.25, THU):
![Screenshot 2025-05-01 at 17 24 59](https://github.com/user-attachments/assets/d9ab624a-3599-446c-871a-c95dfa9fd40e)
<!-- ![Screenshot 2025-05-01 at 17 21 50](https://github.com/user-attachments/assets/3b09eec3-1714-45f8-bcd3-dbe89d019a28) <!-- ![Screenshot 2025-03-27 at 14 20 28](https://github.com/user-attachments/assets/2f9a8f46-c15a-4720-adca-d1534a5c2351) -->
---
### Explanation of [Sketchybar](https://github.com/FelixKratz/SketchyBar) items (left to right)
---
- **_Monitor / MacBook_**: indicator if external or internal display is currently focused (greyed-out if there are empty space, orange if there are fullscreen spaces)
- **Numbers**: number of spaces on current display . current space on current display : number of windows on current space . number of apps on current space
- **Text**: currently focused / active app
- **KC**: [KeyboardCleanTool](https://folivora.ai/keyboardcleantool/) [clickable open/close]
- <a id="anchor2"></a>**FN / SF**: "Use F1, F2, etc. keys as standard function keys" (**check click_fn.sh**) [clickable: toggle]
- **Numbers with one letter**: used swap . used ram : inbuilt storage . external storage . sd card : battery
- "**Behind the notch**": shutdown and restart (**event aevtr**) [clickable: execute]
- "**[Sketchybar](https://github.com/FelixKratz/SketchyBar) e position**": Audio percentage or AI for "audio interface" : active output device [clickable: open/focus [Sonarworks SoundID Reference](https://www.sonarworks.com/soundid-reference)]
- **_Envelope_ / XX**: indicator for new mails / [Thunderbird](https://www.thunderbird.net/en-US/thunderbird/all/) quit [clickable: open/focus Thunderbird]
- **CAM**: [LogiTune](https://www.logitech.com/en-us/video-collaboration/software/logi-tune-software.html) [clickable: open/focus]
- **ELG**: [Elgato Control Center](https://formulae.brew.sh/cask/elgato-control-center) [clickable: openAndPopUp/quit]
- **REM**: [Remote+](https://cherpake.com/apps/remote-mouse-keyboard/) [clickable: startServer/quit]
- **CFW**: [Cloudflare Warp](https://formulae.brew.sh/cask/cloudflare-warp) [clickable: openAndConnect/quit]
- **VPN**: [Viscosity](https://formulae.brew.sh/cask/viscosity#default) [clickable: openAndConnect/quit]
- <a id="anchor3"></a>**Numbers**: date [clickable: toggle date/time] : day of the week : week of the year [clickable: toggle yabai -m config menubar_opacity (0.00/1.00)]

<!-- 
### Indication: ...

## Always & Quickly Available Terminal ---iTerm2

### Hotkey Window

![Screenshot 2025-03-29 at 11 50 01](https://github.com/user-attachments/assets/df4c5621-4fc6-40e6-ac33-6e41be3383cc)

### Customized btop

-->
