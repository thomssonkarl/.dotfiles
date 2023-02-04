# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Aliases
alias ..="cd .."
alias ls="ls -oh --color" 
alias clearcaches="rm -rv ~/Library/Caches/*"
alias listcaches="ls ~/Library/Caches"
alias c="clear"
alias omp="/opt/homebrew/opt/gcc/bin/c++-12 -fopenmp"
alias newcourse="bash ~/shell/sh-scripts/newcourse.sh"
alias mpdf="gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=merged.pdf"
alias py="python3"

setopt HIST_IGNORE_ALL_DUPS

export EDITOR=vim
export BROWSER=google-chrome
export PATH=/opt/homebrew/bin:$PATH
export PATH="/opt/homebrew/sbin:$PATH"

source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

