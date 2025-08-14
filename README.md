📸 Roundshot - take rounder shots
===
![GitHub Repo stars](https://img.shields.io/github/stars/Youpen-y/roundshot)
![GitHub Downloads (all assets, all releases)](https://img.shields.io/github/downloads/Youpen-y/roundshot/total)
![GitHub License](https://img.shields.io/github/license/Youpen-y/roundshot)

`roundshot` is a lightweight Bash script tool that lets you take screenshots
with customizable rounded corners.
### Preview
![animatedGif](./images/animatedUsage.gif)


### Examples
Normal screenshot (square corners):

![normal](./images/screenshot_corners_0.png)

Roundshot(rounded corners with custom radius):
- Default radiuss (10px)

![default](./images/screenshot_corners_default.png)
- 100px radius

![radius100](./images/screenshot_corners_100.png)


✨ Features
===
- Customizable corner radius (in pixels)
- Bind to keyboard shortcut (not implemented)

🔧 Dependencies
===
- [flameshot](https://github.com/flameshot-org/flameshot) (required >= v0.7.3)
- [ImageMagick](https://github.com/ImageMagick/ImageMagick) (required >=
6.3.5+)

Dependencies Installation:
- *Ubuntu*
```Bash
sudo apt install flameshot
sudo apt install imagemagick
```


📦 Installation
===
```Bash
# make help
sudo make # or sudo make install
```
This will create a symbolic link to the script at /usr/bin/roundshot.

🚀 Usage
===
```Bash
roundshot [OPTION] [RADIUS]

```

❤️ Support and Sponsorship
===
If you have some ideas or suggestions about the project, please contact me
freely.

If you find this helpful, please star it and consider showing your support!
- Alipay/WeChat
<table>
    <tr>
        <td><img src="https://private-user-images.githubusercontent.com/44435912/475899040-4625eced-abca-4c99-90bd-f7c27c7c97bb.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NTQ2MzYzNzEsIm5iZiI6MTc1NDYzNjA3MSwicGF0aCI6Ii80NDQzNTkxMi80NzU4OTkwNDAtNDYyNWVjZWQtYWJjYS00Yzk5LTkwYmQtZjdjMjdjN2M5N2JiLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNTA4MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjUwODA4VDA2NTQzMVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWM1MWNjZjk4MzBmZGM5MjI2ODI2N2M3ZTAxMjM2NTMzYjdhYTE5YmE0NjU0NjA2MDc3MDI4ODlhOWM2NWM5MDcmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.AgtJAhCJ72SgM_wNLRA-KGM4SViLfiTZfIGTDRdSMaY" width="140" height="176" alt="drawing"/></td>
        <td><img src="https://private-user-images.githubusercontent.com/44435912/475908736-81a7de28-c046-43d4-9468-e4761e5afbe1.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NTQ2Mzg1NDQsIm5iZiI6MTc1NDYzODI0NCwicGF0aCI6Ii80NDQzNTkxMi80NzU5MDg3MzYtODFhN2RlMjgtYzA0Ni00M2Q0LTk0NjgtZTQ3NjFlNWFmYmUxLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNTA4MDglMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjUwODA4VDA3MzA0NFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWJjMjllYjMzNmVhY2QxM2IyYjc2NzMxMmZiMDA1MjY4NjY1YzZlNTY2MTBlMGZkMjA3YzZmNjRhZDVkNDg4NjImWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.jg6F7XlYzxfYP385WrnZ6r4M_O8fopaKqcwrN9LLp08" width="105" height="176" alt="drawing"/></td>
    </tr>
</table>

📄 License
===
MIT License


