source $HOME/.antigen.zsh
source $HOME/.alias
source $HOME/.export
#wmname LG3D
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
#(cat ~/.cache/wal/sequences &)

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/joaquin/Repos/bgcbr/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/joaquin/Repos/bgcbr/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/joaquin/Repos/bgcbr/node_modules/tabtab/.completions/sls.zsh ]] && . /home/joaquin/Repos/bgcbr/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /home/joaquin/Repos/bgcbr/node_modules/tabtab/.completions/slss.zsh ]] && . /home/joaquin/Repos/bgcbr/node_modules/tabtab/.completions/slss.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/home/joaquin/.anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
if [ -f "/home/joaquin/.anaconda3/etc/profile.d/conda.sh" ]; then
   . "/home/joaquin/.anaconda3/etc/profile.d/conda.sh"
else
    export PATH="/home/joaquin/.anaconda3/bin:$PATH"
fi
unset __conda_setup
# <<< conda initialize <<<

