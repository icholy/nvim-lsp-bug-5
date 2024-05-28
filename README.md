# NVIM 29048

Issue: https://github.com/neovim/neovim/issues/29048

### Steps:

1. Install `lua-language-server`.
2. `nvim --clean -u init.lua bad.lua`
3. `:lua stop()`
4. `:lua show()`

**Problem:** The warnings from `init.lua` are still in the quickfix.
