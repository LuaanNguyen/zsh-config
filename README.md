# My ZSH Configuration

A modern, powerful shell configuration with beautiful theme and useful plugins for [Oh-My-Zsh](https://ohmyz.sh/)

## ✨ Features

- 💻 Custom aliases and functions
- 🎨 Beautiful terminal prompt with Powerlevel10k
- 📝 Smart autosuggestions
- 🌈 Syntax highlighting
- ⚡️ Fast and efficient setup

## 🔧 Required Dependencies

| Dependency                                                                      | Description                          |
| ------------------------------------------------------------------------------- | ------------------------------------ |
| [Oh-My-Zsh](https://ohmyz.sh/)                                                  | 💪 A delightful framework for Zsh    |
| [Powerlevel10k](https://github.com/romkatv/powerlevel10k)                       | ✨ A beautiful and informative theme |
| [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)         | 🔍 Fish-like autosuggestions         |
| [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) | 🎨 Fish-like syntax highlighting     |

## 📦 Installation

### 1. Install Oh-My-Zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 2. Clone this repository

```bash
git clone https://github.com/YOUR_USERNAME/zsh-config.git ~/.zsh
```

### 3. Install required plugins

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### 4. Install Powerlevel10k theme

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### 5. Create symlinks

```bash
ln -s ~/.zsh/config/zshrc ~/.zshrc
ln -s ~/.zsh/config/alias.zsh ~/.zsh/aliases.zsh
```

## 🎨 Customization

- Edit `~/.zsh/config/alias.zsh` to add your custom aliases
- Edit `~/.zsh/config/zshrc` to modify your Zsh configuration
- Run `p10k configure` to customize your Powerlevel10k theme

## 📝 Notes

- Recommended font: [MesloLGS NF](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)
- Terminal: iTerm2 (macOS) or Windows Terminal (Windows)

## 🤝 Contributing

Feel free to submit issues and enhancement requests!

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
