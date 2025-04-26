# macOS (Sequoia 15.3.2+) Setup 24/25

## General Information

- I do not use hiding or minimizing at all in macOS, which is why I deactivated the correspoding hotkeys completely.

## Keyboard-Setup

In `System Settings > Keyboard > Keyboard Shortcuts... > Modifier Keys` change _Control_ to _Globe/fn_ and _Caps Lock_ to _Control_ for both the inbuilt and the external keyboard which is the Keychron Q1 (V1) in my case (2022-2025); QMK Keymap:

```
ESC               F1       F2       F3       F4       F5       F6       F7       F8       F9       F10      F11      F12      F13      F14
NUBS     1        2        3        4        5        6        7        8        9        0        MINS     EQL      BSPC              MPLY
TAB      Q        W        E        R        T        Y        U        I        O        P        LBRC     RBRC                       MPRV
CAPS     A        S        D        F        G        H        J        K        L        SCLN     QUOT     NUHS     ENT               MNXT
LSFT     GRV      Z        X        C        V        B        N        M        COMM     DOT      SLSH              RSFT     UP
MO(FN2)  LOPT     LCMD                                         SPC                        RCMD     ROPT     MO(FN2)  LEFT     DOWN     RGHT
---------------------------------------------------------------------------------------------------------------------------------------------
C(ESC)            BRID     BRIU     MCTL     F15      F16      F17      MPRV     MPLY     MNXT     MUTE     VOLD     VOLU     S(F13)   S(F14)
C(NUBS)  C(1)     C(2)     C(3)     C(4)     C(5)     C(6)     C(7)     C(8)     C(9)     C(0)     C(MINS)  C(EQL)   DEL               S(F15)
C(TAB)   C(Q)     C(W)     C(E)     C(R)     C(T)     C(Y)     C(U)     C(I)     C(O)     C(P)     C(LBRC)  C(RBRC)                    S(F16)
____     C(A)     C(S)     C(D)     C(F)     C(G)     C(H)     C(J)     C(K)     C(L)     C(SCLN)  C(QUOT)  C(NUHS)  PENT              S(F17)
____     C(GRV)   C(Z)     C(X)     C(C)     C(V)     C(B)     C(N)     C(M)     C(COMM)  C(DOT)   ____              C(RSFT)  PGUP
____     ____     ____                                         C(SPC)                     ____     ____     ____     HOME     PGDN     END
```

To mimic the special functions of the f-row completely with the inbuilt keyboard I use the following three lines in my skhd config

```
f15 : skhd -k "0xB1" # spotlight
f16 : skhd -k "0xB0" # dictation
f17 : skhd -k "0xB2" # do not disturb
```

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
