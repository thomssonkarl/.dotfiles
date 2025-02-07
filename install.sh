#!/bin/bash

set -e  # Exit on error

detect_package_manager() {
    if command -v apt &>/dev/null; then
        echo "apt"
    elif command -v dnf &>/dev/null; then
        echo "dnf"
    elif command -v pacman &>/dev/null; then
        echo "pacman"
    elif command -v brew &>/dev/null; then
        echo "brew"
    else
        echo "unknown"
    fi
}

install_dependencies() {
    PM=$(detect_package_manager)

    case "$PM" in
        apt)
            sudo apt update && sudo apt install -y fish neovim
            ;;
        dnf)
            sudo dnf install -y fish neovim
            ;;
        pacman)
            sudo pacman -Sy --noconfirm fish neovim
            ;;
        brew)
            brew install fish neovim
            ;;
        *)
            echo "Unsupported package manager. Please install fish and nvim manually."
            exit 1
            ;;
    esac
}

if [ -z "$1" ]; then
    echo "Usage: $0 [fish|bash] [--install-deps]"
    exit 1
fi

SHELL_TYPE=$1
INSTALL_DEPS=false

if [ "$2" == "--install-deps" ]; then
    INSTALL_DEPS=true
fi

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing dotfiles from $DOTFILES_DIR..."

if [ "$INSTALL_DEPS" == true ]; then
    echo "Installing dependencies..."
    install_dependencies
fi

copy_files() {
    src=$1
    dest=$2

    mkdir -p "$dest"
    cp -r "$src"/* "$dest"
}

if [ "$SHELL_TYPE" == "fish" ]; then
    echo "Installing Fish configuration..."
    copy_files "$DOTFILES_DIR/fish" "$HOME/.config/fish"

elif [ "$SHELL_TYPE" == "bash" ]; then
    echo "Installing Bash configuration..."
    cp "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"
else
    echo "Invalid argument. Use 'fish' or 'bash'."
    exit 1
fi

echo "Installing Neovim configuration..."
copy_files "$DOTFILES_DIR/nvim" "$HOME/.config/nvim"

echo "Dotfiles installation complete!"
