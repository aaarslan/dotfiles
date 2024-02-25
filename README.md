# Dotfiles README

This README provides an overview of the custom configurations for my terminal and shell environment, including Alacritty, Sheldon plugin manager, and Starship prompt.

## Alacritty Configuration

[Alacritty](https://alacritty.org/) is a modern terminal emulator that prioritizes simplicity and performance. My configuration enhances the visual and functional aspects of Alacritty to suit my preferences.

- **Theme**: [Catppuccin](https://github.com/catppuccin/catppuccin) Mocha
- **Font**: Hack Nerd Font, with different styles for normal, bold, italic, and bold italic text.
- **Window**: Custom padding and decorations, with dynamic titles based on the active application.
- **Scrolling**: Increased history to 20,000 lines for extensive scroll-back.
- **Selection**: Clipboard integration for easy text copy-paste operations.
- **Cursor**: Block shape with blinking enabled for better visibility.

Configuration file: `.config/alacritty/alacritty.toml`

## Sheldon Plugin Manager

[Sheldon](https://sheldon.cli.rs/) is a fast, configurable, shell plugin manager. It allows for managing Zsh plugins efficiently.

- **Autosuggestions**: Offers command suggestions based on history.
- **Syntax Highlighting**: Enhances command line readability.
- **Autojump**: A cd command that learns - easily navigate directories.
- **Docker & Rust Completions**: Autocompletion for Docker and Rust commands.
- **Oh My Zsh Plugins**: Integration of Oh My Zsh plugins, specifically the git-prompt.

Configuration file: `.config/sheldon/plugins.toml`

## Starship Prompt

[Starship](https://starship.rs/) is a minimal, blazing-fast, and infinitely customizable prompt for any shell.

- **Prompt Structure**: Customized layout including Python environment, username, hostname, directory, Git branch, and more.
- **Git Status**: Visual indicators for different Git statuses.
- **Command Duration**: Displays the execution time of the last command.
- **Palette**: Catppuccin Mocha theme with custom symbols and colors for various prompt elements.

Configuration file: `.config/starship.toml`

## Zsh Configuration

My Zsh setup enhances shell interaction, productivity, and visual appeal.

- **Aliases**: Custom aliases for frequently used commands with enhanced listing options using `eza`.
- **[Sheldon](https://sheldon.cli.rs/)**: Integration for managing shell plugins.
- **[Starship](https://starship.rs/)**: Configured as the shell prompt for an informative and visually pleasing command line experience.
- **[Zoxide](https://github.com/ajeetdsouza/zoxide)**: A smarter cd command that helps you navigate faster by learning your habits.
- **[Atuin](https://atuin.sh/)**: Improves shell history with advanced features like search and statistics.

Configuration file: `.zshrc`

---

**Note**: To apply these configurations, clone this repository to your local machine and follow the setup instructions for each tool (Alacritty, Sheldon, Starship) accordingly. Customize it further to suit your needs!
