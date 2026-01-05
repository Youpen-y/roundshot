📸 Roundshot - 圆角截图工具
===
![GitHub Repo stars](https://img.shields.io/github/stars/Youpen-y/roundshot)
![GitHub Downloads (all assets, all releases)](https://img.shields.io/github/downloads/Youpen-y/roundshot/total)
![GitHub License](https://img.shields.io/github/license/Youpen-y/roundshot)

`roundshot` 是一个轻量级的 Bash 脚本工具，用于生成带有自定义圆角的截图。

**[English](README.md) | [中文](README.zh-CN.md)**

### 预览
<video src="https://private-user-images.githubusercontent.com/44435912/531943179-6e7e1c5a-2ce4-4ad9-b920-04e2e40d984a.webm?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3Njc2MTgyOTEsIm5iZiI6MTc2NzYxNzk5MSwicGF0aCI6Ii80NDQzNTkxMi81MzE5NDMxNzktNmU3ZTFjNWEtMmNlNC00YWQ5LWI5MjAtMDRlMmU0MGQ5ODRhLndlYm0_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMTA1JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDEwNVQxMjU5NTFaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1lYjM2YjRhY2Q1YmQ0YjBjMzgyY2E4MzljYjEyMWEzNDk2NGQ2YTRlMTE3MWE1NjgxYTNmNDk5MmMxMGMyODAwJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.pwt-FLZ586OK25bukbjO7H-vv3EI9XqwfFzxI2z4pdc" autoplay muted loop></video>

### 🚀 使用方法
```bash
roundshot [选项] [半径]
```

运行命令后使用 Flameshot 选择区域。截图将：
- 保存到 `~/Pictures/Screenshots/`
- 复制到剪贴板（可直接粘贴）

✨ 特性
===
- 可自定义圆角半径（像素单位）
- 自动复制到剪贴板

📦 安装
===
```Bash
# 1. clone repo && change directory
git clone https://github.com/Youpen-y/roundshot.git
cd roundshot

# 2. install it
sudo make # 或 sudo make install
```
这将创建一个指向脚本的符号链接 `/usr/bin/roundshot`.

🔧 依赖
===
- [flameshot](https://github.com/flameshot-org/flameshot)（必需 >= v0.7.3）
- [ImageMagick](https://github.com/ImageMagick/ImageMagick)（必需 >= 6.3.5+）
- xclip（X11）或 wl-clipboard（Wayland）- 用于剪贴板复制

#### 依赖安装：
```Bash
# Ubuntu
sudo apt install flameshot imagemagick xclip
# 或 Wayland：
sudo apt install flameshot imagemagick wl-clipboard
```

#### 键盘快捷键（**推荐**）

大多数桌面环境允许你将自定义命令绑定到热键：

- GNOME / Ubuntu

    1. 设置 → 键盘 → 键盘快捷键
    2. 点击 "+" 添加自定义快捷键
    3. 名称：Roundshot
    4. 命令：roundshot（或 roundshot 20 设置默认 20px 半径）
    5. 快捷键：按下你想要的组合键（例如：Ctrl+Alt+S）

- KDE Plasma

    1. 系统设置 → 快捷键 → 自定义快捷键
    2. 添加 → 命令 URL
    3. 设置命令和触发器

- XFCE

    1. 设置 → 键盘 → 应用程序快捷键
    2. 添加：roundshot → 按下组合键

### 示例
普通截图（直角）：

<img src="https://private-user-images.githubusercontent.com/44435912/531945808-539698b8-191a-4924-ba28-a48b66bcbc98.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3Njc2MTgzMzYsIm5iZiI6MTc2NzYxODAzNiwicGF0aCI6Ii80NDQzNTkxMi81MzE5NDU4MDgtNTM5Njk4YjgtMTkxYS00OTI0LWJhMjgtYTQ4YjY2YmNiYzk4LnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNjAxMDUlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjYwMTA1VDEzMDAzNlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWQwZWVjZmQ3NmRmOTE4MDM2ZDQ5YzZlNjU4MDIyZjY4Yjg5MTE1NTQzMmY1MjVmMTFiYmRmYzlkZWM2MWU1ZTAmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.zUoo4y7AceL1XdC9lbuJhzKzZdXvllXjvjdiwOdjCrs" alt="normal" width="400">

Roundshot（自定义圆角半径）：
- 默认半径（10px）
```bash
$ roundshot              # 默认 10px 半径
```

<img src="https://private-user-images.githubusercontent.com/44435912/531946367-61596682-c85e-41ad-9974-be57a6fdcdb2.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3Njc2MTgzMzYsIm5iZiI6MTc2NzYxODAzNiwicGF0aCI6Ii80NDQzNTkxMi81MzE5NDYzNjctNjE1OTY2ODItYzg1ZS00MWFkLTk5NzQtYmU1N2E2ZmRjZGIyLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNjAxMDUlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjYwMTA1VDEzMDAzNlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTRkNTE0NGE4Y2M2NDM1Yjc1OWEzMDE0Y2QzZjNhZWI1NTc0YmNkODdkZjQyNGFjYmI4MTZkOGE4ODY2YmQ0ZDgmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.8Eb3tAzRTs_jupaJ_eLCXbdCBd_rvBLqteCMBYgtRyk" alt="default" width="400">

- 100px 半径
```bash
$ roundshot 100           # 自定义 100px 半径
```

<img src="https://private-user-images.githubusercontent.com/44435912/531946574-a505b790-37c9-4d85-bfce-88571dda9b1e.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3Njc2MTgzMzYsIm5iZiI6MTc2NzYxODAzNiwicGF0aCI6Ii80NDQzNTkxMi81MzE5NDY1NzQtYTUwNWI3OTAtMzdjOS00ZDg1LWJmY2UtODg1NzFkZGE5YjFlLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNjAxMDUlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjYwMTA1VDEzMDAzNlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPThiNjkxMzZkNTZhYTRiY2JmNTdjOWYyYjEyM2E4ZDMxNzJiYWMwZTU0NGY0Y2ExMDlmOGE4Y2JkZDU1YmVlYzcmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.Yji-BqPpXlmNG0WPerhFtCUbgk3eHmPwjYByhinaWik" alt="radius100" width="400">

❤️ 支持
===
如果你觉得这个工具有帮助，请给它点个星！

📄 许可证
===
MIT License
