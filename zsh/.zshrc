source $HOME/.antigen.zsh
source $HOME/.alias
source $HOME/.export
wmname LG3D
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen-bundle history
antigen-bundle jump

# Syntax highlighting and autosuggestions bundle 
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme https://github.com/halfo/lambda-mod-zsh-theme lambda-mod

# Tell antigen that you're done.
antigen apply

# Umask( Permission for newly files)
umask 027

# pywal: Applying colorscheme for new shells.
(cat ~/.cache/wal/sequences &)
