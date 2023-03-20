# Neovim Config

This is my neovim config which on a unix machine goes under `~/.config/nvim`.

1. Install neovim
1. Install [packer](https://github.com/wbthomason/packer.nvim)
1. Install prettier: `sudo npm -g install prettier`
1. Install eslint_d: `sudo npm -g install eslint_d`
1. Install go stuff:

        go install -v github.com/incu6us/goimports-reviser/v3@latest
        go install golang.org/x/tools/cmd/goimports@latest

1. Make sure to `:PackerSync`. This might take a couple attempts

I also had to change some tmux things to get the colors to work correctly.
This was done by following the instructions of `:CheckHealth`.
