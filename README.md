- repo chứa config của wezterm và nvim(lazyvim), 1 tí vọc vạch thử dùng vim và wezterm của mình (có thể dùng cả iterm2)
- source gốc: https://github.com/nguyenvulong/devenv-macos.
- Code C++

```terminal
vim.api.nvim_set_keymap("n", "<C-r>", ":w<CR>:!g++ -std=c++17 -o %:r % && ./%:r<CR>", { noremap = true, silent = true })
```
