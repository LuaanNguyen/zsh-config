# zsh-config

My personal Zsh configuration for macOS — Oh-My-Zsh + Powerlevel10k.

## Dependencies

- [Oh-My-Zsh](https://ohmyz.sh/)
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [fzf](https://github.com/junegunn/fzf)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [eza](https://github.com/eza-community/eza) *(optional, for better `ls`)*

## Install

```bash
# 1. Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 2. Clone this repo
git clone https://github.com/LuaanNguyen/zsh-config.git ~/.zsh

# 3. Install plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# 4. Install Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# 5. Install CLI tools
brew install fzf zoxide eza
$(brew --prefix)/opt/fzf/install

# 6. Symlink configs
ln -s ~/.zsh/config/zshrc ~/.zshrc
ln -s ~/.zsh/config/alias.zsh ~/.zsh/aliases.zsh
ln -s ~/.zsh/config/.p10k.zsh ~/.p10k.zsh
```

## Customization

- Aliases → `config/alias.zsh`
- Shell config → `config/zshrc`
- Prompt → run `p10k configure`

> Recommended font: [MesloLGS NF](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)
