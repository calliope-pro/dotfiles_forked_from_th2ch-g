#==================================================
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprofile"
fi
export PATH="$HOME/mytools:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export LD_LIBRARY_PATH="$HOME/tools/lib:$LD_LIBRARY_PATH" # for tmux
export TERMINFO=/usr/share/terminfo # for tmux


# local specific export file
if [ -e $HOME/.zshenv_export ]; then
    cat $HOME/.zshenv_export | while IFS= read -r line;
    do
        export PATH="$line:$PATH"
    done
fi
#==================================================
