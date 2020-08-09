# alias rm='rm -i'
alias cp='cp -i'
# alias mv='mv -i'
alias df='df -h'
alias du='du -h'
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
alias ls='ls -ahF --color=tty'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -alF'                              # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #

# data analysis
alias su='sort |uniq'
alias suc='sort |uniq -c'
alias sum="awk '{a+=\$1; b+=\$2; c+=\$3; d+=\$4; e+=\$5; f+=\$6; g+=\$7; h+=\$8; i+=\$9;} END { print a,b,c,d,e,f,g,h,i }'"

alias glogs='git log --oneline --decorate'
alias glog='git log --oneline --decorate --graph'
alias glogl='git log --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias glogla='git log --decorate --graph --all'
alias gco='git checkout'
alias gci='git commit'
alias gdi='git diff'
alias gst='git status'
alias ga='git add'
alias gaa='git add -A'
alias gb='git branch'
alias gba='git branch -a'
alias gbr='git branch -r'
alias gbc='git rev-parse --abbrev-ref HEAD'
alias gbl='git branch -a -vv'
