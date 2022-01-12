# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/vit/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Turned off in favor of oh-my-zsh completion
#source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh 
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/bindings.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/git.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/history.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/gpg.zsh

export JAVA_HOME=/usr/lib/jvm/java-14-openjdk
PATH=$JAVA_HOME/bin:~/.cargo/bin:~/go/bin:/usr/local/go/bin:$PATH

export KEYID=0x17034C9BD37BFB92
#export GNUPGHOME=/home/vit/.gnupg
# Needed to make git commits work with gpg signing in zsh https://github.com/keybase/keybase-issues/issues/2798
export GPG_TTY=$TTY

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
