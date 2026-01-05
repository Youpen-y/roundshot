📸 Roundshot - take rounder shots
===
![GitHub Repo stars](https://img.shields.io/github/stars/Youpen-y/roundshot)
![GitHub Downloads (all assets, all releases)](https://img.shields.io/github/downloads/Youpen-y/roundshot/total)
![GitHub License](https://img.shields.io/github/license/Youpen-y/roundshot)

`roundshot` is a lightweight Bash script tool that lets you take screenshots
with customizable rounded corners.

**[English](README.md) | [中文](README.zh-CN.md)**

### Preview
![animatedGif](./images/animatedUsage.gif)


### 🚀 Usage
```bash
roundshot [OPTION] [RADIUS]
```

Run the command and select an area with Flameshot. The screenshot will be:
- Saved to `~/Pictures/Screenshots/`
- Copied to clipboard (ready to paste)

✨ Features
===
- Customizable corner radius (in pixels)
- Auto-copy to clipboard

📦 Installation
===
```Bash
# 1. clone repo && change directory
git clone https://github.com/Youpen-y/roundshot.git
cd roundshot

# 2. install it
sudo make # or sudo make install
```
This will create a symbolic link to the script at `/usr/bin/roundshot`.

🔧 Dependencies
===
- [flameshot](https://github.com/flameshot-org/flameshot) (required >= v0.7.3)
- [ImageMagick](https://github.com/ImageMagick/ImageMagick) (required >= 6.3.5+)
- xclip (X11) or wl-clipboard (Wayland) - for clipboard copy

Dependencies Installation:
```Bash
# Ubuntu
sudo apt install flameshot imagemagick xclip
# or Wayland:
sudo apt install flameshot imagemagick wl-clipboard
```

Keyboard Shortcut (**Recommended**)

Most desktop environments let you bind custom commands to hotkeys:

- GNOME / Ubuntu

    1. Settings → Keyboard → Keyboard Shortcuts
    2. Click "+" to add custom shortcut
    3. Name: Roundshot
    4. Command: roundshot (or roundshot 20 for default 20px radius)
    5. Shortcut: Press your desired key combo (e.g., Ctrl+Alt+S)

- KDE Plasma

    1. System Settings → Shortcuts → Custom Shortcuts
    2. Add → Command URL
    3. Set command and trigger

- XFCE

    1. Settings → Keyboard → Application Shortcuts
    2. Add: roundshot → press key combination

### Examples
Normal screenshot (square corners):

![normal](./images/screenshot_corners_0.png)

Roundshot (rounded corners with custom radius):
- Default radius (10px)
```bash
$ roundshot              # Default 10px radius
```
![default](./images/screenshot_corners_default.png)
- 100px radius
```bash
$ roundshot 100           # Custom 100px radius
```
![radius100](./images/screenshot_corners_100.png)

❤️ Support
===
If you find this helpful, please star it!

📄 License
===
MIT License


