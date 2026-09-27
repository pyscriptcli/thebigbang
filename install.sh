#!/usr/bin/env bash
# thebigbang installer for macOS / Linux
# Usage:
#   curl -fsSL https://raw.githubusercontent.com/pyscriptcli/thebigbang/main/install.sh | bash

set -e

echo -e "\033[1;36m======================================================\033[0m"
echo -e "\033[1;33m  THE BIG BANG THEORY ENGINEERING SQUAD INSTALLER     \033[0m"
echo -e "\033[1;36m======================================================\033[0m"

REPO_URL="https://github.com/pyscriptcli/thebigbang"

# Determine target directory
if [ -n "$1" ]; then
    DEST_DIR="$1"
elif [ -d "$HOME/.gemini/config" ]; then
    DEST_DIR="$HOME/.gemini/config/skills"
elif [ -d "$HOME/.claude" ]; then
    DEST_DIR="$HOME/.claude/skills"
else
    DEST_DIR="$HOME/.gemini/config/skills"
fi

mkdir -p "$DEST_DIR"
echo -e "\nTarget skills directory: \033[0;37m$DEST_DIR\033[0m"

TEMP_DIR=$(mktemp -d)
trap 'rm -rf "$TEMP_DIR"' EXIT

echo -e "\033[0;32mFetching skills from GitHub...\033[0m"
curl -fsSL "$REPO_URL/archive/refs/heads/main.tar.gz" | tar -xz -C "$TEMP_DIR"

cp -rf "$TEMP_DIR/thebigbang-main/skills/"* "$DEST_DIR/"

echo -e "\n\033[1;36mInstalled squad members into $DEST_DIR:\033[0m"
for member in sheldon leonard penny howard raj bernadette amy squad thebigbang; do
    if [ -d "$DEST_DIR/$member" ]; then
        echo -e "  \033[0;32m[+] $member\033[0m"
    fi
done

echo -e "\n\033[1;33mBazinga! Your squad is ready.\033[0m"
echo -e "Type '/sheldon' or '/thebigbang' in your AI assistant to start!\n"
