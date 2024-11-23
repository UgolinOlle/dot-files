# Dotfiles

A carefully curated collection of configuration files for a modern development environment.

## 🌟 Overview

This repository contains my personal dotfiles, featuring configurations for:

- Neovim (WhoaIDE custom configuration)
- Kitty Terminal
- Btop
- Sketchybar
- Starship prompt

## ⚡ Key Features

### [🚀 WhoaIDE (Neovim Configuration)](https://github.com/UgolinOlle/WhoaIDE)

A powerful Neovim-based IDE with features including:

- LSP integration with automatic server installation
- Intelligent code completion
- Git integration
- File tree and fuzzy finding
- Diagnostic tools
- Custom note-taking system
- AI assistance (GitHub Copilot)
- Beautiful UI with custom dashboard

### 🖥️ Terminal Setup

#### Kitty Terminal

- Multiple profiles for different use cases:
  - Coding profile (FiraCode Nerd Font)
  - Screencasting profile (DankMono Nerd Font)
- Custom keybindings

#### Starship Prompt

- Custom-designed prompt with git integration
- Directory icons
- AWS profile indicator
- Time display

## 🛠️ Installation

1. Clone the repository:

```bash
git clone https://github.com/UgolinOlle/dotfiles.git
cd dotfiles
```

2. Create symbolic links:

### Example for Neovim configuration

```bash
ln -s ~/dotfiles/nvim ~/.config/nvim
```

### Example for Kitty configuration

```bash
ln -s ~/dotfiles/kitty ~/.config/kitty
```


## 📦 Dependencies

- Neovim (>= 0.9.0)
- Git
- Node.js
- Python 3
- Kitty Terminal
- Nerd Fonts
- Ripgrep (for telescope search)

## ⚙️ Configuration

### Neovim (WhoaIDE)

The Neovim configuration is modular and can be customized through:
- `~/.config/nvim/lua/whoa/configs/features.lua` - Toggle features
- `~/.config/nvim/user/main.lua` - User-specific configurations

### Terminal Profiles

Switch between terminal profiles using:

```bash
~/dotfiles/kitty/change-profile.sh
```


## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Neovim](https://neovim.io/)
- [Kitty Terminal](https://sw.kovidgoyal.net/kitty/)
- [Starship](https://starship.rs/)
- [Catppuccin Theme](https://github.com/catppuccin)

## 📧 Contact

For questions or suggestions, feel free to reach out through:
- GitHub Issues
- Email: [hello@ugolin-olle.com](mailto:hello@ugolin-olle.com)
