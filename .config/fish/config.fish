set -gx SHELL '/usr/bin/fish'
set -gx MANPAGER 'most'
set -gx EDITOR 'nvim'
set -gx TORCH_CUDA_VERSION 'cu117'
set -gx NVM_DIR $HOME/.nvm

set -gx CLIENT_SECRET "vBdO0vb29VM6M1JF8OetDfL6g8tqIuCgKW7rN8aVwM"
set -gx CLIENT_ID "uuSbzScRU44DT5YWtguv0"

alias ..='cd'
alias ...='cd'
alias vim='nvim'
alias pn=pnpm
alias ls='exa -l --color=always --group-directories-first'
alias la='exa -al --color=always --group-directories-first'
alias more='less'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB

set -q XDG_CONFIG_HOME 
    and alias vi='nvim $XDG_CONFIG_HOME/nvim/init.lua'
    or alias vi='nvim $HOME/.config/nvim/init.lua'

set -q XDG_CONFIG_HOME 
    and alias vifish='nvim $XDG_CONFIG_HOME/fish/config.fish'
    or alias vi='nvim $HOME/.config/fish/config.fish'

bind  \cf 'fzf'

alias icat="kitty +kitten icat"


# config.fish
if test -z (pgrep ssh-agent)
  eval (ssh-agent -c)
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
  set -Ux SSH_AGENT_PID $SSH_AGENT_PID
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
end
