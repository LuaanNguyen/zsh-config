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
git clone https://github.com/LuaanNguyen/zsh-config.git ~/.zsh
cd ~/.zsh && ./install.sh
```

The script will install all Homebrew packages (`Brewfile`), Oh-My-Zsh, plugins, Powerlevel10k, fzf shell integration, and create all symlinks. Existing files are backed up before being replaced.

## Customization

- Aliases → `config/alias.zsh`
- Shell config → `config/zshrc`
- Prompt → run `p10k configure`

> Recommended font: [MesloLGS NF](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)
