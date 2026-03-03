#!/bin/bash

HISTFILE="$HOME/.zsh_history"
BACKUP="$HOME/.zsh_history.bad.$(date +%Y%m%d_%H%M%S)"

echo "[*] Checking if history file exists..."

if [ ! -f "$HISTFILE" ]; then
    echo "[!] No .zsh_history file found. Creating a new one..."
    touch "$HISTFILE"
    chmod 600 "$HISTFILE"
    echo "[+] New history file created."
    exit 0
fi

echo "[*] Backing up corrupted history to:"
echo "    $BACKUP"

mv "$HISTFILE" "$BACKUP"

echo "[*] Recovering readable commands..."
strings "$BACKUP" > "$HISTFILE"

chmod 600 "$HISTFILE"

echo "[*] Reloading history into current shell..."
fc -R "$HISTFILE" 2>/dev/null

echo "[+] History recovery completed successfully!"
