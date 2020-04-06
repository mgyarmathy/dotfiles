# append to PATH if needed
export PATH=$PATH

# better terminal prompt + colors
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# aliases
alias ls='ls -GFh' # better ls
alias vscode='code'
alias weather='curl wttr.in'
alias fixaudio='sudo pkill -9 -f coreaudio'
