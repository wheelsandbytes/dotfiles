# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# gotta set the PATH
export PATH=$HOME/bin:/usr/local/bin:/Users/tim/Library/Python/3.8/bin:~/bin:$HOME/.yarn/bin:/opt/local/bin:/opt/local/sbin:$PATH

# and the Go path:
export GOPATH=$HOME/go/

# increase the zsh command history size
export HISTFILESIZE=1000000000

# Edge specifics in here:
[ -f "$HOME/.config/edgerc" ] && source "$HOME/.config/edgerc"

# aliases configured in here
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# NVM specifics
[ -f "$HOME/.config/nvmrc" ] && source "$HOME/.config/nvmrc"

# can't afford to lose this file again
TIMESTAMP=$(date|sed 's/ /-/g'); cp ~/.zshrc ~/.zshrc_backups/.zshrc$(echo $TIMESTAMP)

# activate powerline10k
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# zsh-autosuggestions plugin
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

