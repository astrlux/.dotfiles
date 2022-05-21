PROMPT="%F{142}%c%f %F{183}λ%f "
#EXPORTS
export TERM="screen-256color"
export VIMRUNTIME=/usr/local/Cellar/neovim/0.7.0/share/nvim/runtime # NIGHTLY
export DOTFILES=$HOME/.dotfiles
export SCHOOL=$HOME/notes/school
export STOW_FOLDERS="nvim,zsh,kitty"
export EDITOR=nvim
#THE LITTLE THINGS IN LIFE
alias school='cd $SCHOOL'
alias notes='nvim $HOME/notes/README.md'
alias pnotes="pushd $HOME/notes; cm 'changes'; git push; popd;"
alias lc='nvim $HOME/notes/code/README.md' 
alias mr='rm'
alias b='cd ..'
alias dc='cd'
alias cdc='cd'
alias c='clear'
alias clera='clear'
alias clare='clear'
alias celar='clear'
alias caeler='clear'
alias claer='clear'
alias clearls='clear && ls'
alias sl=ls
alias lsl=ls
alias llsl=ls
alias sl='ls -ltG'
alias ls='ls -ltG'
alias lsl='ls -ltG'
alias llsl='ls -ltG'
alias sl=ls
alias serve='python3 -m http.serve'
alias jn='jupyter-notebook'
alias fzfi='rg --files --hidden --follow --no-ignore-vcs -g "!{tools,node_modules,.git}" | fzf'
alias ff='nvim $(fzfi)'
alias resetDock='defaults delete com.apple.dock; killall Dock'
#DOCKER
alias kubectl="minikube kubectl --"
#GIT
alias cm='git add . && git commit -am'
alias st='git status'
alias co='git checkout'
alias pullom='git pull origin master'
alias br='git branch';
alias log="git log --first-parent --graph --pretty=format:'%C(yellow)%h%Creset -%C(auto)%d%Creset %s %C(cyan)(%cr) %Cresetby %C(bold blue)%aN%Creset' --abbrev-commit --date=relative --branches"
#MERCURIAL
#alias log='hg log -G'
#alias st='hg status'
#alias cm='hg add && hg commit -m'
#WWW
alias brave='{read -r arr; open -a "Brave Browser" "${arr}"} <<<'
alias browser='{read -r arr; brave ${arr} } <<<'
alias google='{read -r arr; browser "https://google.com/search?q=${arr}";} <<<'
alias gc='git clone'
#EDITOR
alias e='nvim'
alias te='open -a TextEdit.app'
#DOTFILE MANAGEMENT
alias ss='source ~/.zshrc'
alias kc='nvim ~/.config/kitty/kitty.conf'
alias bc='nvim ~/.bashrc'
alias zc='nvim ~/.zshrc'
alias init='nvim ~/.config/nvim/init.lua'
alias appearance='nvim ~/.config/nvim/lua/m/appearance.lua'
alias coq='nvim ~/.config/nvim/lua/m/coq.lua'
alias sets='nvim ~/.config/nvim/lua/m/sets.lua'
alias finder='nvim ~/.config/nvim/lua/m/finder.lua'
alias maps='nvim ~/.config/nvim/lua/m/maps.lua'
alias plugins='nvim ~/.config/nvim/lua/m/plugins.lua'
alias lsp='nvim ~/.config/nvim/lua/m/lsp.lua'
luaMake() {
  pushd
  cd ~/tools/lua-language-server/3rd/luamake
  ./luamake
  popd
}
installDotfiles() {
  pushd $DOTFILES
  sh scripts/install.sh
  popd
}
commitDotfiles() { #credit: Michael Paulson @ Netflix
  pushd $DOTFILES
  git add .
  git commit -m 'post_obfuscation'
  git push origin master
  popd
}
removeDotfiles() {
  pushd $DOTFILES
  sh scripts/clean.sh
  popd
}
clean() {
  pushd $DOTFILES
  rm -rf ~/.cache
  rm -rf ~/.DS_Store
  rm -rf ~/.zsh_history
  rm -rf ~/.ipython
  rm -rf ~/.python_history
  rm -rf ~/.sqlite_history
  popd
}
# ZSH VIM MODE
bindkey -v
# LAB
alias dsmlp='ssh ubhattac@dsmlp-login.ucsd.edu'

LAB=$SCHOOL/127/lab
alias scppush="scp -P 2222 -r $LAB cse127@127.0.0.1:/home/student"
alias scppull="scp -P 2222 -r cse127@127.0.0.1:/home/student $LAB"
openLab() {
  mkdir -p $LAB
  fuser -c $LAB
  sshfs -o default_permissions -p 2222 student@127.0.0.1:/home/student $LAB
  cd $LAB
}
closeLab() {
  pushd;
  cd; umount -f $LAB
  rm -rf $LAB
  popd;
}

school
lf
