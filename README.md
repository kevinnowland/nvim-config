# Neovim Config

This is my neovim config which on a unix machine goes under `~/.config/nvim`.

1. Install neovim
1. Install [packer](https://github.com/wbthomason/packer.nvim)
1. Make sure to `:PackerSync`. This might take a couple attempts

Then need to also install linting and LSP clients. For example:

1. Install pyright. `npm -g install pyright` or `brew install pyright`
1. Install prettier: `npm -g install prettier`
1. Install eslint_d: `npm -g install eslint_d`
1. Install typescript-language-server: `npm -g install typescript-language-server`
1. Install go stuff:

        go install -v github.com/incu6us/goimports-reviser/v3@latest
        go install golang.org/x/tools/cmd/goimports@latest
1. To get the markdown preview to work, had to go find it under `~/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim`
and `cd app && yarn install`.
1. Make sure to have python linters and such installed in your virtual env, e.g., `ruff`, `ruff-lsp`, `mypy`


I also had to change some tmux things to get the colors to work correctly.
The `tmux` and linting things can be easily found via `:CheckHealth`.

