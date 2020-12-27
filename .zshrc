# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#ZSH_THEME="clean"
autoload -Uz compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
# prompt walters

# This will set the default prompt to the walters theme
plugins=(colored-man-pages git sudo zsh-syntax-highlighting zsh-completions zsh-autosuggestions you-should-use zsh-vimode-visual zsh-autocomplete)



#source /home/hojdy/.config/broot/launcher/bash/br
source /home/hojdy/.config/zsh/plugins/colored-man-pages.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/hojdy/.config/zsh/zsh-autocomplete-master/zsh-autocomplete.plugin.zsh
source /home/hojdy/.config/zsh/z-master/z.sh
#source ~/.zsh/vi-mode/vi-mode.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias v='nvim'
alias vim='nvim'
alias fm='vifm'
alias cat="bat"
alias ls="exa"
alias n="nnn -C -H -d"
alias find="fd"
alias xi='sudo xbps-install -Suy '
alias xq='sudo xbps-query -Rs '

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
unsetopt HIST_SAVE_NO_DUPS       # Write a duplicate event to the history file

bindkey -v
export KEYTIMEOUT=1


# nnn
export NNN_BMS='h:~;p:~/Pictures;d:~/Downloads/;o:~/dots;c:~/.config;m:/mnt/;b:bookmarks'
export NNN_USE_EDITOR=1
export NNN_OPENER=xdg-open
export NNN_COLORS='9267'
export NNN_PLUG='f:finder;o:fzopen;p:mocplay;d:diffs;t:nmount;v:imgview'
export NNN_ARCHIVE="\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)$"

source /home/hojdy/.config/broot/launcher/bash/br
