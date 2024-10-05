#!/bin/bash

function prettyPrint() {
  local message=$1
  printf "\n\n\n============= $message =============\n\n\n"
}

function installBasicTools() {
  prettyPrint "Installing basic tools"

  sudo apt-get update
  sudo apt-get install -y git curl build-essential xclip python3.10-venv stow tmux

  prettyPrint "Basic tools installation complted"
}

function installHomebrew() {
  prettyPrint "Installing Homebrew"

  # Check if Homebrew is already installed
  if command -v brew >/dev/null 2>&1; then
    printf "Homebrew is already installed"
  else
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Add Homebrew to PATH if installation was successful
    printf 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >>~/.bashrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

    printf "Homebrew installation complete"
  fi

  prettyPrint "Homebrew installation completed"
}

function installPackagesWithBrew() {
  prettyPrint "Installing packages with Homebrew"

  brew install nvm neovim zoxide starship lazygit

  # Create tmux plugin directory if it doesn't exist
  if [ ! -d "$HOME/nvm" ]; then
    mkdir nvm
  else
    printf "nvm is already installed"
  fi

  prettyPrint "Packages installation complete"
}

function installSdkmanAndJava() {
  prettyPrint "Installing SDKMAN and Java 17.0.12-oracle"

  # Check if SDKMAN is already installed
  if command -v sdk >/dev/null 2>&1; then
    printf "SDKMAN is already installed"
  else
    # Install SDKMAN
    curl -s "https://get.sdkman.io" | bash
  fi

  # Install Java 17.0.12-oracle
  sdk install java 17.0.12-oracle

  prettyPrint "SDKMAN and Java installation complete"
}

function synchronize() {
  prettyPrint "Synchronizing with Stow"
  stow --adopt .
  prettyPrint "Synchronizing completed"
}

function installTpm() {
  prettyPrint "Installing Tmux Plugin Manager (TPM)"

  # Create tmux plugin directory if it doesn't exist
  if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
  else
    printf "TPM is already installed"
  fi

  prettyPrint "TPM installation complete"
}

function setupTerminal() {
  prettyPrint "Setting up terminal"

  dconf load /org/gnome/terminal <gnome-terminal-settings.txt

  prettyPrint "Setting up terminal completed"
}

# Call the functions
installBasicTools
installHomebrew
installPackagesWithBrew
installSdkmanAndJava
installTpm
synchronize
