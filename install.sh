#!/bin/zsh
set -e

echo "==> Installing Homebrew packages..."
brew bundle install --file="$(dirname "$0")/Brewfile"

echo "==> Installing Oh-My-Zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
  echo "    Oh-My-Zsh already installed, skipping."
fi

echo "==> Installing Zsh plugins..."
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
fi

if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
fi

echo "==> Installing Powerlevel10k..."
if [ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k"
else
  echo "    Powerlevel10k already installed, skipping."
fi

echo "==> Setting up fzf shell integration..."
"$(brew --prefix)/opt/fzf/install" --all --no-bash --no-fish

echo "==> Creating symlinks..."
DOTFILES="$(dirname "$0")"

symlink() {
  local src="$1" dst="$2"
  if [ -L "$dst" ]; then
    echo "    $dst already symlinked, skipping."
  elif [ -f "$dst" ]; then
    echo "    Backing up existing $dst -> ${dst}.bak"
    mv "$dst" "${dst}.bak"
    ln -s "$src" "$dst"
  else
    ln -s "$src" "$dst"
    echo "    Linked $dst"
  fi
}

symlink "$DOTFILES/config/zshrc"    "$HOME/.zshrc"
symlink "$DOTFILES/config/alias.zsh" "$HOME/.zsh/aliases.zsh"
symlink "$DOTFILES/config/.p10k.zsh" "$HOME/.p10k.zsh"

echo ""
echo "Done! Restart your terminal or run: source ~/.zshrc"
echo "To customize your prompt run: p10k configure"
