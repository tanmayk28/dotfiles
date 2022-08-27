# HOMEBREW
eval "$(/opt/homebrew/bin/brew shellenv)"
fpath=("$HOMEBREW_PREFIX/share/zsh/site-functions" $fpath)

# NON HIGHLIGHTED TEXT AFTER PASTE
unset zle_bracketed_paste

# SOURCE DOTFILES
source ~/.aliases

# STARSHIP
eval "$(starship init zsh)"

# ZSH-COMPLETIONS
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi

# ZSH-SYNTAX-HIGHLIGHTING
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ZSH-AUTOSUGGESTIONS
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh