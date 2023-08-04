# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

autoload -U colors && colors

[[ -f ~/.p10k.zsh ]] || PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' menu select=0
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/bsahin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install

export DENO_INSTALL="/home/bsahin/.deno"
export EDITOR=/usr/bin/nvim
which podman 2>/dev/null >/dev/null && export DOCKER_HOST=unix:///run/user/$UID/podman/podman.sock
export PATH=$PATH:$DENO_INSTALL/bin:/home/bsahin/.emacs.d/bin:/home/bsahin/.local/bin:/opt/MATLAB/R2023a/bin:/home/bsahin/.local/bin/statusbar:/home/bsahin/x-tools/arm-kobo-linux-gnueabihf/bin:/opt/Qt/5.15.2/gcc_64/bin
export QT_QPA_PLATFORM=xcb
[[ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[[ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
[[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
[[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[[ -f ~/Documents/src/powerlevel10k/powerlevel10k.zsh-theme ]] && source ~/Documents/src/powerlevel10k/powerlevel10k.zsh-theme
[[ -f /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme ]] && source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

DISABLE_AUTO_TITLE="true"

case $TERM in xterm*)
    precmd () {print -Pn "\e]0;%n@%m\a"}
    ;;
esac

alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias vim="nvim"
alias vi="nvim"
alias ll="ls --color=auto -lAh"
[[ -x /usr/bin/exa ]] && alias ls="exa" && alias ll="exa -lah --git" && alias tree="exa -l --tree --git"
#alias emacs="emacs -nw"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/dotfiles/p10k/.p10k.zsh.
[[ ! -f ~/dotfiles/p10k/.p10k.zsh ]] || source ~/dotfiles/p10k/.p10k.zsh
