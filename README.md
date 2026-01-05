📸 Roundshot - take rounder shots
===
![GitHub Repo stars](https://img.shields.io/github/stars/Youpen-y/roundshot)
![GitHub Downloads (all assets, all releases)](https://img.shields.io/github/downloads/Youpen-y/roundshot/total)
![GitHub License](https://img.shields.io/github/license/Youpen-y/roundshot)

`roundshot` is a lightweight Bash script tool that lets you take screenshots
with customizable rounded corners.

**[English](README.md) | [中文](README.zh-CN.md)**

### Preview
<video src="https://private-user-images.githubusercontent.com/44435912/531943179-6e7e1c5a-2ce4-4ad9-b920-04e2e40d984a.webm?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3Njc2MTgyOTEsIm5iZiI6MTc2NzYxNzk5MSwicGF0aCI6Ii80NDQzNTkxMi81MzE5NDMxNzktNmU3ZTFjNWEtMmNlNC00YWQ5LWI5MjAtMDRlMmU0MGQ5ODRhLndlYm0_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMTA1JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDEwNVQxMjU5NTFaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1lYjM2YjRhY2Q1YmQ0YjBjMzgyY2E4MzljYjEyMWEzNDk2NGQ2YTRlMTE3MWE1NjgxYTNmNDk5MmMxMGMyODAwJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.pwt-FLZ586OK25bukbjO7H-vv3EI9XqwfFzxI2z4pdc" autoplay muted loop></video>

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

<img src="https://private-user-images.githubusercontent.com/44435912/531945808-539698b8-191a-4924-ba28-a48b66bcbc98.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3Njc2MTgzMzYsIm5iZiI6MTc2NzYxODAzNiwicGF0aCI6Ii80NDQzNTkxMi81MzE5NDU4MDgtNTM5Njk4YjgtMTkxYS00OTI0LWJhMjgtYTQ4YjY2YmNiYzk4LnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNjAxMDUlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjYwMTA1VDEzMDAzNlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWQwZWVjZmQ3NmRmOTE4MDM2ZDQ5YzZlNjU4MDIyZjY4Yjg5MTE1NTQzMmY1MjVmMTFiYmRmYzlkZWM2MWU1ZTAmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.zUoo4y7AceL1XdC9lbuJhzKzZdXvllXjvjdiwOdjCrs" alt="normal" width="400">

Roundshot (rounded corners with custom radius):
- Default radius (10px)
```bash
$ roundshot              # Default 10px radius
```

<img src="https://private-user-images.githubusercontent.com/44435912/531946367-61596682-c85e-41ad-9974-be57a6fdcdb2.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3Njc2MTgzMzYsIm5iZiI6MTc2NzYxODAzNiwicGF0aCI6Ii80NDQzNTkxMi81MzE5NDYzNjctNjE1OTY2ODItYzg1ZS00MWFkLTk5NzQtYmU1N2E2ZmRjZGIyLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNjAxMDUlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjYwMTA1VDEzMDAzNlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTRkNTE0NGE4Y2M2NDM1Yjc1OWEzMDE0Y2QzZjNhZWI1NTc0YmNkODdkZjQyNGFjYmI4MTZkOGE4ODY2YmQ0ZDgmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.8Eb3tAzRTs_jupaJ_eLCXbdCBd_rvBLqteCMBYgtRyk" alt="default" width="400">

- 100px radius
```bash
$ roundshot 100           # Custom 100px radius
```

<img src="https://private-user-images.githubusercontent.com/44435912/531946574-a505b790-37c9-4d85-bfce-88571dda9b1e.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3Njc2MTgzMzYsIm5iZiI6MTc2NzYxODAzNiwicGF0aCI6Ii80NDQzNTkxMi81MzE5NDY1NzQtYTUwNWI3OTAtMzdjOS00ZDg1LWJmY2UtODg1NzFkZGE5YjFlLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNjAxMDUlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjYwMTA1VDEzMDAzNlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPThiNjkxMzZkNTZhYTRiY2JmNTdjOWYyYjEyM2E4ZDMxNzJiYWMwZTU0NGY0Y2ExMDlmOGE4Y2JkZDU1YmVlYzcmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.Yji-BqPpXlmNG0WPerhFtCUbgk3eHmPwjYByhinaWik" alt="radius100" width="400">

❤️ Support
===
If you find this helpful, please star it!

📄 License
===
MIT License


