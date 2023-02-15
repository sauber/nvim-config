# neovim with deno language server

## Install neovim

    sudo apt install dirmngr ca-certificates software-properties-common gnupg gnupg2 apt-transport-https -y
    sudo gpg --list-keys
    sudo gpg --no-default-keyring --keyring /usr/share/keyrings/neovim.gpg --keyserver keyserver.ubuntu.com --recv-keys 9DBB0BE9366964F134855E2255F96FCF8231B6DD
    echo 'deb [signed-by=/usr/share/keyrings/neovim.gpg] https://ppa.launchpadcontent.net/neovim-ppa/stable/ubuntu jammy main' | sudo tee -a /etc/apt/sources.list.d/neovim.list
    sudo apt update -y
    sudo apt install neovim -y
    nvim --version

## deno

    curl -fsSL https://deno.land/x/install/install.sh | sh

Manually add the directory to your $HOME/.bashrc (or similar)

    export DENO_INSTALL="/home/sauber/.deno"
    export PATH="$DENO_INSTALL/bin:$PATH"

## python language server

    brew install autopep8

## node

    curl -sL https://deb.nodesource.com/setup_18.x | sed -e 's/vanessa/vera/' | sudo -E bash -
    sudo apt-get install -y nodejs

## tools

    sudo apt install ripgrep fd-find fonts-hermit terminator
    sudo npm install -g prettier

## nerdfont

    cd ~/Downloads
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hermit.zip
    unzip Hermit.zip
    mkdir ~/.local/share/fonts/
    cp ~/Downloads/Hurmit*.otf ~/.local/share/fonts/
    fc-cache -fv

In terminator preferences->profile set font to Hurmit Ned Font Medium

    ln -s $PWD/nvim-config ~/.config/nvim
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    :PlugInstall
    :checkhealth

## stylua

    brew install stylua
