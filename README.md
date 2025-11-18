###### *<div align="right"><sub>// design by adilhyz</sub></div>*

## Dotfiles Hyprland

<img alt="Shot-2025-11-18-201151" src="https://github.com/user-attachments/assets/b61642b8-240d-47b6-82dd-1b3148bb1cd5" />

## ⚙️ Setup

<details open>
<summary><b>Installation:</b></summary>

The installer only works for **ARCH** Linux, and based distros.

<b>Open a terminal in HOME</b>
First download the [installer](Installer)
```sh
curl https://raw.githubusercontent.com/adilhyz/dotfiles-hypr/master/Installer -o $HOME/Installer
```
Now give it execute permissions
```sh
chmod +x Installer
```
Finally run the [installer](Installer)
```sh
./Installer
```
</details>

## ⌨️ Keybinds

### Helper

| Action                               | Key Combination                                            |
|--------------------------------------|------------------------------------------------------------|
| Exit Hyprland                        | <kbd>CTRL</kbd>+<kbd>ALT</kbd>+<kbd>BACKSPACE</kbd>        |
| Exit Hyprland                        | <kbd>SUPER</kbd>+<kbd>M</kbd>                              |
| Kill Active Window                   | <kbd>SUPER</kbd>+<kbd>Q</kbd>                              |
| Kill (Hyprctl Kill)                  | <kbd>SUPER</kbd>+<kbd>Escape</kbd>                         |
| Task Manager (komentar, XFCE)        | <kbd>CTRL</kbd>+<kbd>SHIFT</kbd>+<kbd>ESCAPE</kbd>         |

### Apps

| Action                               | Key Combination                                            |
|--------------------------------------|------------------------------------------------------------|
| Launch Terminal                      | <kbd>SUPER</kbd>+<kbd>RETURN</kbd>                         |
| Launch Floating Terminal             | <kbd>SUPER</kbd>+<kbd>SHIFT</kbd>+<kbd>RETURN</kbd>        |
| Launch File Manager                  | <kbd>SUPER</kbd>+<kbd>E</kbd>                              |
| Launch Yazi File Manager             | <kbd>SUPER</kbd>+<kbd>SHIFT</kbd>+<kbd>E</kbd>             |
| Toggle Floating Window               | <kbd>SUPER</kbd>+<kbd>S</kbd>                              |
| Power Menu                           | <kbd>SUPER</kbd>+<kbd>X</kbd>                              |
| Color Picker                         | <kbd>SUPER</kbd>+<kbd>P</kbd>                              |
| DRun Menu                            | <kbd>SUPER</kbd>+<kbd>D</kbd>                              |
| Run Launcher                         | <kbd>SUPER</kbd>+<kbd>R</kbd>                              |
| Window Menu                          | <kbd>SUPER</kbd>+<kbd>W</kbd>                              |
| Fullscreen Window                    | <kbd>SUPER</kbd>+<kbd>F</kbd>                              |
| Pseudo Tiling                        | <kbd>SUPER</kbd>+<kbd>T</kbd>                              |
| Lock Screen                          | <kbd>SUPER</kbd>+<kbd>L</kbd>                              |
| Start/Stop Recording                 | <kbd>SUPER</kbd>+<kbd>G</kbd>                              |
| Reload Hyprland & Waybar/Swaync      | <kbd>SUPER</kbd>+<kbd>SHIFT</kbd>+<kbd>R</kbd>             |

#### Info
| Action                               | Key Combination                                            |
|--------------------------------------|------------------------------------------------------------|
| Open Rofi                            | <kbd>SUPER</kbd>+<kbd>CTRL</kbd>+<kbd>RETURN</kbd>         |
| Screenshot (Selection)               | <kbd>SUPER</kbd>+<kbd>Print</kbd>                          |
| Screenshot (All)                     | <kbd>SUPER</kbd>+<kbd>ALT</kbd>+<kbd>Print</kbd>           |
| Screenshot (5s Delay)                | <kbd>ALT</kbd>+<kbd>Print</kbd>                            |
| Screenshot (Now)                     | <kbd>Print</kbd>                                           |

### Window Switcher
| Action                               | Key Combination                                            |
|--------------------------------------|------------------------------------------------------------|
| Wallpaper Picker                     | <kbd>SUPER</kbd>+<kbd>ALT</kbd>+<kbd>W</kbd>               |
| Move Focus Left                      | <kbd>SUPER</kbd>+<kbd>LeftArrow</kbd>                      |
| Move Focus Right                     | <kbd>SUPER</kbd>+<kbd>RightArrow</kbd>                     |
| Move Focus Up                        | <kbd>SUPER</kbd>+<kbd>UpArrow</kbd>                        |
| Move Focus Down                      | <kbd>SUPER</kbd>+<kbd>DownArrow</kbd>                      |
| Workspace 1-6                        | <kbd>SUPER</kbd>+<kbd>1</kbd> ... <kbd>6</kbd>             |
| Move Window Left                     | <kbd>SUPER</kbd>+<kbd>CTRL</kbd>+<kbd>LeftArrow</kbd>      |
| Move Window Right                    | <kbd>SUPER</kbd>+<kbd>CTRL</kbd>+<kbd>RightArrow</kbd>     |
| Move Window Up                       | <kbd>SUPER</kbd>+<kbd>CTRL</kbd>+<kbd>UpArrow</kbd>        |
| Move Window Down                     | <kbd>SUPER</kbd>+<kbd>CTRL</kbd>+<kbd>DownArrow</kbd>      |
| Resize Window Left                   | <kbd>SUPER</kbd>+<kbd>SHIFT</kbd>+<kbd>LeftArrow</kbd>     |
| Resize Window Right                  | <kbd>SUPER</kbd>+<kbd>SHIFT</kbd>+<kbd>RightArrow</kbd>    |
| Resize Window Up                     | <kbd>SUPER</kbd>+<kbd>SHIFT</kbd>+<kbd>UpArrow</kbd>       |
| Resize Window Down                   | <kbd>SUPER</kbd>+<kbd>SHIFT</kbd>+<kbd>DownArrow</kbd>     |
| Move to Workspace Prev/Next          | <kbd>SUPER</kbd>+<kbd>ALT</kbd>+<kbd>Left/RightArrow</kbd> |
| Move Window to Workspace             | <kbd>SUPER</kbd>+<kbd>ALT</kbd>+<kbd>1-6</kbd>             |
| Toggle Special Workspace (Magic)     | <kbd>SUPER</kbd>+<kbd>K</kbd>                              |
| Move to Special Workspace            | <kbd>SUPER</kbd>+<kbd>SHIFT</kbd>+<kbd>K</kbd>             |
| Next Workspace (Mouse Scroll Down)   | <kbd>SUPER</kbd>+<kbd>MouseDown</kbd>                      |
| Prev Workspace (Mouse Scroll Up)     | <kbd>SUPER</kbd>+<kbd>MouseUp</kbd>                        |
| Move Window (Drag)                   | <kbd>SUPER</kbd>+<kbd>LeftMouse</kbd>                      |
| Resize Window (Drag)                 | <kbd>SUPER</kbd>+<kbd>RightMouse</kbd>                     |

### System Keybinding

| Action                               | Key Combination                                            |
|--------------------------------------|------------------------------------------------------------|
| Volume Up                            | <kbd>XF86AudioRaiseVolume</kbd>                            |
| Volume Down                          | <kbd>XF86AudioLowerVolume</kbd>                            |
| Mute Volume                          | <kbd>XF86AudioMute</kbd>                                   |
| Mute Microphone                      | <kbd>XF86AudioMicMute</kbd>                                |
| Brightness Up                        | <kbd>XF86MonBrightnessUp</kbd>                             |
| Brightness Down                      | <kbd>XF86MonBrightnessDown</kbd>                           |
| Music Next Track                     | <kbd>XF86AudioNext</kbd>                                   |
| Music Pause/Play                     | <kbd>XF86AudioPause</kbd> / <kbd>XF86AudioPlay</kbd>       |
| Music Previous Track                 | <kbd>XF86AudioPrev</kbd>                                   |

//MAINTENANCE
