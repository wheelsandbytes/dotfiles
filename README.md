# dotfiles

## .zshrc

my zsh configuration uses powerlevel10k and a few plugins:

powerlevel10k found [here](https://github.com/romkatv/powerlevel10k)

zsh-syntax-highlighing can be found [here](https://github.com/zsh-users/zsh-syntax-highlighting)

zsh-autosuggestions can be found [here](https://github.com/zsh-users/zsh-autosuggestions)

### why not oh-my-zsh?

oh-my-zsh has a much bigger set of features, but it's also slower to start, as a result. installing powerlevel10k and the plugins manually yields a lightning-fast prompt when opening a new shell.

## ~~VIM~~ NeoVim

~~## .vimrc~~

~~my vim setup is a bit messy, and uses a mixture of plugins installed via [vim-plug](https://github.com/junegunn/vim-plug), and via manual install (vim 8+ has built-in plugin support)~~


_forget Vim_—NeoVim is the way!

to use my config, install neovim with:

```
brew install neovim
```

Drop the `.config` folder into your home directory (assuming no prior customization of `XDG_CONFIG_HOME`)

Add `export XDG_CONFIG_HOME=$HOME/.config/` to your `bashrc`/`zshrc`

Launch neovim with `nvim` and run `:PackerSync` to install the plugins

Quit neovim with `:qa` and relaunch

_hopefully it all works after those steps_

Custom mappings:

- `<leader>` is `" "` (space)
- Fuzzy file finding is done via Telescope.nvim
    - `<leader>ff` to find a file by name
    - `<leader>fg` to find a file with live grep
    - `<leader>fb` to list open buffers

