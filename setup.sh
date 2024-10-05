#!/bin/bash

function prettyPrint() {
  local message=$1
  echo "============================ $message ========================================="
}

function installBasicTools() {
  prettyPrint "Installing basic tools"
  sudo apt-get update
  sudo apt-get install -y git curl build-essential xclip python3.10-venv stow tmux
}

function installHomebrew() {
  prettyPrint "Installing Homebrew"

  # Check if Homebrew is already installed
  if command -v brew >/dev/null 2>&1; then
    echo "Homebrew is already installed"
  else
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Add Homebrew to PATH if installation was successful
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >>~/.bashrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

    echo "Homebrew installation complete"
  fi
}

function installPackagesWithBrew() {
  prettyPrint "Installing packages with Homebrew"

  brew install nvm
  brew install neovim
  brew install zoxide
  brew install starship

  # Set up nvm environment
  export NVM_DIR="$HOME/.nvm"
  [ -s "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh" ] && \. "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh"                                       # This loads nvm
  [ -s "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
  echo 'export NVM_DIR="$HOME/.nvm"' >>~/.bashrc
  echo '[ -s "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh" ] && \. "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh"' >>~/.bashrc
  echo '[ -s "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm"' >>~/.bashrc

  # Set up starship prompt with Pure configuration
  echo 'eval "$(starship init bash)"' >>~/.bashrc

  # Set up zoxide
  echo 'eval "$(zoxide init bash)"' >>~/.bashrc

  echo "Packages installation complete"
}

function installSdkmanAndJava() {
  prettyPrint "Installing SDKMAN and Java 17.0.12-oracle"

  # Check if SDKMAN is already installed
  if command -v sdk >/dev/null 2>&1; then
    echo "SDKMAN is already installed"
  else
    # Install SDKMAN
    curl -s "https://get.sdkman.io" | bash

    # Add SDKMAN to PATH and initialize
    # echo 'export SDKMAN_DIR="$HOME/.sdkman"' >>~/.bashrc
    # echo '[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"' >>~/.bashrc
    # source "$HOME/.sdkman/bin/sdkman-init.sh"
  fi

  # Install Java 17.0.12-oracle
  sdk install java 17.0.12-oracle

  echo "SDKMAN and Java installation complete"
}

function synchronize() {
  prettyPrint "Synchronizing with Stow"
  stow --adopt .
}

function installTpm() {
  prettyPrint "Installing Tmux Plugin Manager (TPM)"

  # Create tmux plugin directory if it doesn't exist
  if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
  else
    prettyPrint "TPM is already installed"
  fi

  prettyPrint "TPM installation complete"
}

function setupTerminal() {
  prettyPrint "Setting up terminal"

  dconf load /org/gnome/terminal <gnome-terminal-settings.txt
}

# Call the functions
installBasicTools
installHomebrew
installPackagesWithBrew
installSdkmanAndJava
installTpm
synchronize
