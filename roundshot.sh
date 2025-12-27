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
output_dir="$HOME/Pictures/Screenshots"
output_file="$output_dir/screenshot_$timestamp.png"

# Ensure output directory exists
mkdir -p "$output_dir"

# screenshot
echo "  Please select area with Flameshot..."
flameshot gui -r > "$screenshot_file"

if [ ! -s "$screenshot_file" ]; then
  echo "❌ Screenshot failed or was canceled."
  exit 1
fi

echo "✨ Creating rounded corners..."

# Detect ImageMagick command and version
magick_cmd=""
version_info=""

if command -v magick >/dev/null 2>&1; then
	magick_cmd="magick"
	version_info=$(magick --version 2>/dev/null | head -n 1)
elif command -v convert >/dev/null 2>&1; then
	magick_cmd="convert"
	version_info=$(convert --version 2>/dev/null | head -n 1)
fi

if [ -z "$magick_cmd" ]; then
	echo "❌ ImageMagick not installed. Please install ImageMagick (>= 6.3.5+)"
	exit 1
fi

# Apply rounded corners using detected ImageMagick command
case "$version_info" in
	*"ImageMagick 7"*|*"ImageMagick 6"*)
		$magick_cmd "$screenshot_file" \
		  \( +clone -alpha extract \
			 -draw "fill black polygon 0,0 0,$radius $radius,0 fill white circle $radius,$radius $radius,0" \
			 \( +clone -flip \) -compose Multiply -composite \
			 \( +clone -flop \) -compose Multiply -composite \
		  \) -alpha off -compose CopyOpacity -composite \
		  "$output_file"
		;;
	*)
		echo "❌ Unknown ImageMagick version: $version_info"
		echo "   Supported: ImageMagick 6.x or 7.x"
		exit 1
		;;
esac

if [ -s "$output_file" ]; then
  echo "✅ Rounded screenshot saved to: $output_file"

  # Copy to clipboard
  copied=false

  # Wayland detected?
  if [ -n "$WAYLAND_DISPLAY" ]; then
    command -v wl-copy >/dev/null 2>&1 && wl-copy --type image/png < "$output_file" 2>/dev/null && copied=true
    # Fallback to xclip if wl-copy fails
    [ "$copied" = false ] && command -v xclip >/dev/null 2>&1 && xclip -selection clipboard -i "$output_file" -t image/png 2>/dev/null && copied=true
  else
    # X11 detected
    command -v xclip >/dev/null 2>&1 && xclip -selection clipboard -i "$output_file" -t image/png 2>/dev/null && copied=true
    # Fallback to wl-copy if xclip fails
    [ "$copied" = false ] && command -v wl-copy >/dev/null 2>&1 && wl-copy --type image/png < "$output_file" 2>/dev/null && copied=true
  fi

  if [ "$copied" = true ]; then
    echo "📋 Copied to clipboard"
  else
    echo "⚠️  Failed to copy to clipboard"
    echo "   Install: sudo apt install xclip (X11) or wl-clipboard"
    echo "           - (Wayland)"
  fi

  rm -f "$screenshot_file"
else
  echo "❌ Failed to create rounded screenshot. Check ImageMagick installation."
  echo "📄 Original screenshot: $screenshot_file"
fi
