#!/bin/bash

# Exit if not run as root
if [ "$EUID" -ne 0 ]; then
    echo "❌ Error: Please run this script as root (use sudo)"
    exit 1
fi

packages=("nginx" "curl" "wget")

for pkg in "${packages[@]}"
do
    if dpkg -s "$pkg" &> /dev/null
    then
        echo "✅ $pkg is already installed"
    else
        echo "⬇️ Installing $pkg..."
        apt update -y
        apt install -y "$pkg"
    fi
done

echo "All packages processed successfully"
