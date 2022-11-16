eval "$(rbenv init -)"
eval "$(direnv hook zsh)"

 export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# source ~/zsh_plugins/zsh-git-prompt/zshrc.sh
source ~/.zsh/git-prompt.zsh/git-prompt.zsh
source ~/.zsh/git-prompt.zsh/examples/compact.zsh

# an example prompt
# PROMPT='%B%m%~%b$(git_super_status) %# '
alias python=/opt/homebrew/bin/python3
alias vim=nvim
alias tmux="tmux && tmux set-environment -g EDITOR nvim"

export PATH=$PATH:~/Library/Python/3.9/bin

export FZF_DEFAULT_COMMAND="rg --files --hidden --glob \"!.git/*\""

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
