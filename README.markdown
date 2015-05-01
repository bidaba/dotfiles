# Setting up my favorite command line environment

## Make *zsh* the standard shell on OS X

Use *homebrew* to get the latest version:

    $ brew install zsh

Brew installs the shell to `/usr/local/bin`. In order to make it a login shell
we have to add the shell to the list of allowed shells.

    $ sudo vim /etc/shells

Add the line:

    /usr/local/bin/zsh

Change the standard shell:

    $ chsh -s /usr/local/bin/zsh


## Get the settings from Github

Clone the settings files to your home directory (`~`):

    ~ $ git clone https://github.com/bidaba/dotfiles.git

Change to the dotfiles directory and run the `install.sh` script:

    $ ch dotfiles
    $ sh install.sh

