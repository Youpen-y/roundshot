#!/usr/bin/env bash

################################################################################
# Script Name   : roundshot.sh
# Description   : Capture screenshots with customizable rounded corners
# Author        : Yang Yupeng yongy2022@outlook.com
# Version       : 0.1.0
# Created       : 2025-08-14
# Usage         : roundshot [options] [arguments]
# License       : MIT License
################################################################################

usage() {
cat <<-EOF
	roundshot - Tool for create rounded-corner screenshots

    Usage:
        $(basename "$0") [OPTION] [RADIUS]

    Options:
        -h, --help    Show this help message

    Arguments:
        RADIUS           Optional. Radius of the rounded corners (default: 10)
EOF
}

if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    usage
    exit 0
elif [ "$#" -gt 1 ]; then
    echo "❌ Too many arguments."
    usage
    exit 1
fi

radius="${1:-10}"
if [ -n "$1" ] && ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "❌ Radius must be a non-negative integer."
    usage
    exit 1
fi

timestamp=$(date +%Y%m%d_%H%M%S)
screenshot_file="/tmp/screenshot_$timestamp.png"
output_file="$HOME/Pictures/Screenshots/screenshot_$timestamp.png"

# screenshot
echo "  Please select area with Flameshot..."
flameshot gui -r > "$screenshot_file"

if [ ! -s "$screenshot_file" ]; then
  echo "❌ Screenshot failed or was canceled."
  exit 1
fi

echo "✨ Creating rounded corners..."

if command -v magick >/dev/null 2>&1; then
	version_info=$(magick --version 2>/dev/null | head -n 1)
	case "$version_info" in
		*"ImageMagick 7"*)
			magick "$screenshot_file" \
			  \( +clone -alpha extract \
				 -draw "fill black polygon 0,0 0,$radius $radius,0 fill white circle $radius,$radius $radius,0" \
				 \( +clone -flip \) -compose Multiply -composite \
				 \( +clone -flop \) -compose Multiply -composite \
			  \) -alpha off -compose CopyOpacity -composite \
			  "$output_file"
			;;
		*)
			echo "❌ Unknow ImageMagick version"
			;;
	esac
elif command -v convert >/dev/null 2>&1; then
	version_info=$(convert --version 2>/dev/null | head -n 1)
	case "$version_info" in
		*"ImageMagick "*)
			convert "$screenshot_file" \
			  \( +clone -alpha extract \
				 -draw "fill black polygon 0,0 0,$radius $radius,0 fill white circle $radius,$radius $radius,0" \
				 \( +clone -flip \) -compose Multiply -composite \
				 \( +clone -flop \) -compose Multiply -composite \
			  \) -alpha off -compose CopyOpacity -composite \
			  "$output_file"
			;;
		*)
			echo "❌ Unknow ImageMagick version"
			;;
	esac
else
	echo "❌ ImageMagick not installed"
fi

if [ -s "$output_file" ]; then
  echo "✅ Rounded screenshot saved to: $output_file"
  rm -f "$screenshot_file"
else
  echo "❌ Failed to create rounded screenshot. Check ImageMagick installation."
  echo "📄 Original screenshot: $screenshot_file"
fi
