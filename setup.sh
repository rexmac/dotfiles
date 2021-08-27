#!/bin/zsh

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Clone Powerlevel10k theme into Oh-My-Zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install useful utilities
brew update
brew install bat eth-p/software/bat-extras fd fzf gh git-delta htop less lsd ncdu pstree ripgrep wget zsh-autosuggestions zsh-syntax-highlighting

