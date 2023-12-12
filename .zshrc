eval "$(rbenv init -)"
eval "$(direnv hook zsh)"


export HOMEBREW_TEMP=/opt/homebrew/tmp

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

source ~/.zsh/git-prompt.zsh/git-prompt.zsh
source ~/.zsh/git-prompt.zsh/examples/compact.zsh

export EDITOR=nvim
alias vim=nvim
tmux set-environment -g EDITOR nvim

export PATH="/Applications/Postgres.app/Contents/Versions/15/bin/:$PATH"

export FZF_DEFAULT_COMMAND="rg --files --hidden --glob \"!.git/*\""

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.zsh/git-prompt.zsh/git-prompt.zsh

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# bun completions
[ -s "/Users/derekekins/.bun/_bun" ] && source "/Users/derekekins/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
