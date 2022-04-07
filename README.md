<!---
<details><summary>Click for Pictures!</summary>
<img src="https://github.com/astrlux/assets/blob/master/img/one.png?raw=true"  />
<img src="https://github.com/astrlux/assets/blob/master/img/two.png?raw=true"  />
<img src="https://github.com/astrlux/assets/blob/master/img/three.png?raw=true"/>
<img src="https://github.com/astrlux/assets/blob/master/img/1.png?raw=true"/>
<img src="https://github.com/astrlux/assets/blob/master/img/5.png?raw=true"/>
<img src="https://github.com/astrlux/assets/blob/master/img/2.png?raw=true"/>
<img src="https://github.com/astrlux/assets/blob/master/img/3.png?raw=true"/>
<img src="https://github.com/astrlux/assets/blob/master/img/4.png?raw=true"/>
<img src="https://user-images.githubusercontent.com/37908451/160299518-e15db47d-473d-4ed1-b560-1623c2acc018.png"/>
</details>
-->

### Requirements <sup>[5 min]</sup>

1. *nix system (I use Arch linux and macOS)
2. GNU/[Stow](https://www.gnu.org/software/stow/)
3. neovim [v0.5+](https://neovim.io/).

### Installation <sup>[5 sec]</sup>

    cd && git clone --recurse-submodules -j8 git@github.com:astrlux/dotfiles && sudo sh ~/dotfiles/scripts/first_install.sh

Quit & restart your terminal/emulator. Run `:PackerSync`. Finally, you're ready to rumble.

### Sustained Use

Shell commands like `installDotfiles`, `removeDotfiles`, & `commitDotfiles` are at your disposal. For keybinding alterations, look at `.zshrc`, `maps.lua`, or `tmux.conf`. If you've opted to use [kitty](https://sw.kovidgoyal.net/kitty/conf/) like I recommended, you don't need tmux (just press `Ctrl+Shift+Enter`).

### Auxiliary Tools

_efm-language-server llvm luarocks fzf ripgrep thefuck ccls pyright gopls zsh-autosuggestions ninja tree-sitter_

### Optional

1. A Lua language server (I'm using [lua-language-server](https://github.com/sumneko/lua-language-server))
    -   Build this language server following the steps [here](https://github.com/sumneko/lua-language-server/wiki/Build-and-Run-(Standalone)). You'll need [ninja](https://github.com/ninja-build/ninja/wiki/Pre-built-Ninja-packages) and C++17.
    -   The native LSP needs the path to your language server's binary. Hardcode this path in `lsp.lua` (I keep my language server under a `~/tools` folder).

2. For un-_paralleled_ crispness, use a GPU-accelerated emulator like [kitty](https://sw.kovidgoyal.net/kitty/) or [alacritty](https://github.com/alacritty/alacritty).
