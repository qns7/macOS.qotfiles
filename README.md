# macOS (Sequoia 15.4+) Setup 2025

## General Information

- I do not use hiding or minimizing at all in macOS, which is why I deactivated the correspoding hotkeys completely.
- This description/readme is just an overview, for all the details please check the rep.

## Keyboard-Setup

In `System Settings > Keyboard > Keyboard Shortcuts... > Modifier Keys` change _Control_ to _Globe/fn_ and _Caps Lock_ to _Control_ for both the inbuilt and the external keyboard which is the Keychron Q1 (V1, ISO Germany) in my case (2022-2025); QMK Keymap:

```
ESC               F1       F2       F3       F4       F5       F6       F7       F8       F9       F10      F11      F12      F13      F14
^        1        2        3        4        5        6        7        8        9        0        ß        ´        BSPC              MPLY
TAB      Q        W        E        R        T        Y        U        I        O        P        ü        +                          MPRV
CAPS     A        S        D        F        G        H        J        K        L        ö        ä        #        ENT               MNXT
LSFT     <        Z        X        C        V        B        N        M        ,        .        -                 RSFT     UP
MO(FN2)  LOPT     LCMD                                         SPC                        RCMD     ROPT     MO(FN2)  LEFT     DOWN     RGHT
---------------------------------------------------------------------------------------------------------------------------------------------
C(ESC)            BRID     BRIU     MCTL     F15      F16      F17      MPRV     MPLY     MNXT     MUTE     VOLD     VOLU     S(F13)   S(F14)
C(^)     C(1)     C(2)     C(3)     C(4)     C(5)     C(6)     C(7)     C(8)     C(9)     C(0)     C(ß)     C(´)     DEL               S(F15)
C(TAB)   C(Q)     C(W)     C(E)     C(R)     C(T)     C(Y)     C(U)     C(I)     C(O)     C(P)     C(ü)     C(+)                       S(F16)
____     C(A)     C(S)     C(D)     C(F)     C(G)     C(H)     C(J)     C(K)     C(L)     C(ö)     C(ä)     C(#)     ENT               S(F17)
____     C(<)     C(Z)     C(X)     C(C)     C(V)     C(B)     C(N)     C(M)     C(,)     C(.)     ____              C(RSFT)  PGUP
____     ____     ____                                         C(SPC)                     ____     ____     ____     HOME     PGDN     END
```

It is meant to mimic the inuilt keyboard with its layout as best as possible.
To imitate the special functions of the f-row completely with the inbuilt keyboard I use the following three lines in my skhd config

```
f15 : skhd -k "0xB1" # spotlight
f16 : skhd -k "0xB0" # dictation
f17 : skhd -k "0xB2" # do not disturb
```

The additional keys of the Q1 I use as follows

```
... F13      F14
...          MPLY
...          MPRV
...          MNXT
...
...
... ---------------
... S(F13)   S(F14)
...          S(F15)
...          S(F16)
...          S(F17)
...
...
```

where 

```
...
```

## SKHD/Yabai ---/Menuwhere/AltTab

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

I will now list some important hotkeys categories with their acoording hotkeys:

### space and display management ###

```
                             ...
^        1        2        3 ...
                  W        E ...
                           D ...
(LSFT)                       ...
         LOPT     LCMD       ...
```


`alt + cmd - ^` : app exposé

`alt + cmd - 1` : yabai prev space on display

`alt + cmd - 2` : yabai next space on display

`alt + cmd - 3` : mission control

`alt + cmd - e` : change and focus display

`alt + cmd - w` : create_and_focus_new_space

`shift + alt + cmd - w` : move current window to new space and focus

`alt + cmd - d` : cycle fullscreens or del empty spaces

### window management ###

```
...
...
...                                ... ü        + ...
CAPS ...                           ... ä        # ...
...                                                           ... UP
...           ... LCMD ...                           ... LEFT     DOWN     RGHT
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

...

### general system control ###

...

### Caveats

- **Display/Monitor-Setups** : only designed for maximal two displays, internal and one external 27"1440p (to the left); new/different external monitor would need a few adaptions/changes.
- **Dependencies** : cliclick, jq, ... [all available on Homebrew] ... keysmith, only-switch (check references again), 

## Sketchybar

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

## iTerm2

### Hotkey Window

<!-- ![Screenshot 2025-03-29 at 11 50 01](https://github.com/user-attachments/assets/df4c5621-4fc6-40e6-ac33-6e41be3383cc) -->

### Customized btop
