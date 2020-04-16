# MyEnvironment
some useful files for setting up work environment.

# Vim Plugins (using [Pathogen](https://github.com/tpope/vim-pathogen))
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [vim-colours-solarised](https://github.com/altercation/vim-colors-solarized)

# Oh My Zsh ([download](https://github.com/robbyrussell/oh-my-zsh))
- [zsh-completions](https://github.com/zsh-users/zsh-completions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
- [history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)

# Putty Configuration
If you happen to use windows remotely, and want to retain something similar to what you have on a linux machine:
- Set Connection > Data > terminal-type string to `xterm-256color`
- Optional: Set Connection > Data > Auto-login username to the login on the machine you are accessing
- Set Terminal > Bell to off
- Set Window > Appearance Allow selection of variable pitch fonts
- Set Solarised Dark theme in Window > Colours, using [this](https://superuser.com/questions/640225/putty-solarized-the-manual-way) guide.
- Set Connection > seconds between keepalives to 30
- Download a powerline font of your choice [here](https://github.com/powerline/fonts), and install the `ttf` file, then install in Window > Appearance. I'm Currently trying out source code pro light for powerline.
- Save this config in the Session tab for reuse

# Mosh Shell Configuration
If you happen to work remotely with a poor network connection, this shell is good for automatically reconnecting. It mostly works out of the box, with the following changes.
- Set the colourscheme to solarised dark using [this](https://gist.github.com/organisciak/2d2a8c201c235c33102b) guide.
- Assuming you have a font installed, in Preferences you should be able to set the font as e.g "Source Code Pro for Powerline"

# Colorscheme - Solarised Dark
This is easy on the eyes, the pygmalion theme used by oh my zsh uses [this](https://ethanschoonover.com/solarized/) too.
- The vim guide for the colorscheme is above

# Font - Powerline fonts
- You'll need to make sure your terminal software is using the right font. An example of how this was done is in the Putty section above

