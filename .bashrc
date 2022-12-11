#
# ~/.bashrc
#
## Prompt
parse_git_dirty() {
      [[ $(git status 2> /dev/null | tail -n1) \
                != "nothing to commit, working tree clean" ]] && echo "*"
      
}
parse_git_branch() {
      git branch --no-color 2> /dev/null | \
                sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty)) /"
      
}

export PS1='\[\e[32m\]\u@\h\[\e[0m\] \[\e[34m\]\W\[\e[0m\] $(parse_git_branch)'

## Exports
export EDITOR='vim'
export MANPAGER="vim -M +MANPAGER -"

## Aliases
alias py='python3'
alias gd='git diff'
alias gc='git checkout'
alias gb='git branch'
alias gP='git push'
alias gp='git pull'
alias gs='git status -s'

alias ta="tmux a"
alias tm="tmux"
