autoload -Uz compinit
compinit
export ZSH_LS_BACKEND=eza
alias l='eza'
alias la='eza --all'
alias ls='eza --long --color=always --icons=always'
alias ll='eza --long --color=always --icons=always --all'
alias lr='eza --long --recurse --color=always --icons=always --all'
eval "$(sheldon source)"
export STARSHIP_CONFIG=~/.config/starship.toml
eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(atuin init zsh)"