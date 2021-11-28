# SOURCES
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# EXPORTS
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:/usr/local/opt/llvm/bin/"
export TERM="screen-256color"
export JAVA_HOME=$(/usr/libexec/java_home)
export VIMRUNTIME=/usr/local/Cellar/neovim/0.5.1/share/nvim/runtime # NIGHTLY
export DOTFILES=$HOME/dotfiles
export STOW_FOLDERS="nvim,zsh,kitty,surf"
export PROJECTS=$HOME/Projects
export EDITOR=nvim
# PROMPT
PROMPT="%F{141}%1d%F{193} ϟ%f "
# CONVENIENCE
alias notes='nvim ~/Notes/todo'
alias pnotes="pushd ~/Notes; cm 'changes'; git push; popd;"
alias lc='cd ~/Common/CodingChallenges/LeetCode' 
alias mr='rm'
alias b='cd ..'
alias dc='cd'
alias cdc='cd'
alias c='clear'
alias clera='clear'
alias celar='clear'
alias clearls='clear'
alias sl='ls -ltG'
alias ls='ls -lG'
alias sl=ls
alias q='exit'
alias top='htop'
alias serve='python3 -m http.serve'
alias fzfi='rg --files --hidden --follow --no-ignore-vcs -g "!{tools,node_modules,.git}" | fzf'
alias ff='nvim $(fzfi)'
# DOCKER
alias kubectl="minikube kubectl --"
# MERCURIAL
# alias log='hg log -G'
# alias st='hg status'
# alias cm='hg add && hg commit -m'
# GIT
alias cm='git add . && git commit -am'
alias st='git status'
alias co='git checkout'
alias pullom='git pull origin master'
alias br='git branch';
alias log="git log --first-parent --graph --pretty=format:'%C(yellow)%h%Creset -%C(auto)%d%Creset %s %C(cyan)(%cr) %Cresetby %C(bold blue)%aN%Creset' --abbrev-commit --date=relative --branches"
# WWW
alias brave='{read -r arr; open -a "Brave Browser" "${arr}"} <<<'
alias browser='{read -r arr; brave ${arr} } <<<'
alias google='{read -r arr; browser "https://google.com/search?q=${arr}";} <<<'
alias gclone='cd ${PROJECTS} git clone https://www.github.com/'
alias gc='git clone'
# EDITOR
alias vim="nvim"
alias vi="nvim"
alias te="open -a TextEdit.app"
# DOTFILE MANAGEMENT
alias ss='source ~/.zshrc'
alias ac='nvim ~/.config/alacritty/alacritty.yml'
alias kc='nvim ~/.config/kitty/kitty.conf'
alias bc='nvim ~/.bashrc'
alias zc='nvim ~/.zshrc'
alias tc='nvim ~/.config/tmux/tmux.conf'
alias ic='nvim ~/.inputrc'
alias vc='nvim ~/.config/nvim/init.lua'
alias nvc='cd ~/dotfiles/nvim/.config/nvim/'
alias luamake=~/tools/lua-language-server/3rd/luamake/luamake
installDotfiles() {
  pushd $DOTFILES
  sh scripts/install.sh
  popd
}
commitDotfiles() { # credit: Michael Paulson @ Netflix
  pushd $DOTFILES
  git add .
  git commit -m "post_obfuscation"
  git push origin master
  popd
}
removeDotfiles() {
  pushd $DOTFILES
  sh scripts/clean.sh
  popd
}
zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate #enable approximate matches for completion
