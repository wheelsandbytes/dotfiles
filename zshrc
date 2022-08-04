# Enable Powerlevel10k instant prompt. Should stay close to the top of $HOME/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# set vi CLI mode
# to revert, set -o emacs
set -o vi

# set neovim as the editor
export EDITOR="nvim"

# XDG_CONFIG_HOME is not set by default
export XDG_CONFIG_HOME=$HOME/.config/

export PATH=$HOME/bin:/usr/local/bin:opt/local/bin:/opt/local/sbin:$PATH

# increase the zsh command history size
export HISTFILESIZE=1000000000

# find and source *rc files in ~/.config
for configfile in $(ls -1 $HOME/.config/*rc); do 
   source $configfile;
done

# can't afford to lose this file again
TIMESTAMP=$(date|sed 's/ /-/g'); cp $HOME/.zshrc $HOME/.zshrc_backups/.zshrc$(echo $TIMESTAMP)

# zsh-autosuggestions plugin
[ -f "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" ] && source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"

# zsh-syntax-highlighting
[ -f "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] && source "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# activate powerline10k
P10K_PATH=$HOME/local/share/powerlevel10k
[[ ! -d $P10K_PATH ]] && git clone https://github.com/romkatv/powerlevel10k.git $P10K_PATH
source $P10K_PATH/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit $HOME/.p10k.zsh.
[[ ! -f $P10K_PATH/.p10k.zsh ]] || source $P10K_PATH/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
