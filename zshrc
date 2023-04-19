# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

##以上为主题部分
##下面是alias替换的命令, bash也能用, 将下面的内容复制到~/.bashrc中即可

alias ...=../..
alias ....=../../..
alias .....=../../../..
alias ......=../../../../..
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'
#alias _='sudo '
alias afind='ack -il'
alias Egrep='egrep --color=auto'
alias Fgrep='fgrep --color=auto'
alias gc1='git clone --recursive --depth=1'
alias globurl='noglob urlglobber '
alias Grep='grep --color=auto'
alias MD='mkdir -p'
#alias rd=rmdir

alias s='neofetch'
alias so='sudo su'
alias pSy='sudo pacman -Syyu'
alias pS='sudo pacman -S'
alias pR='sudo pacman -Rsc'
alias wo='whoami'
alias DF='df -h'
alias PS='ps ax'        #列出所有进程alias psw='ps axww'     #如果较长的命令被截断,继续在新的行上列出命令，而非截断alias kl='killall'
alias pd='passwd'
alias cl='clear'
alias cm='chmod'
alias ra='ranger'
alias mk='mkdir'
alias to='touch'
#alias RM='rm -r'
alias CP='cp -r'
alias vi='vim'
alias TC='tar -cvf'     # tar
alias tx='tar -xvf'
alias tcz='tar -czvf'   # tar.gz
alias txz='tar -xzvf'
alias tcj='tar -cjvf'   # tar.bz2
alias txj='tar -xjvf'
alias tcZ='tar -cZvf'   # tar.Z
alias txZ='tar -xZvf'
alias tcJ='tar -cJvf'   # tar.xz
#alias rb='reboot'
alias ei='exit'
alias i3config='vim ~/.config/i3/config'
alias vimconfig='vim ~/.vimrc'

