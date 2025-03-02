-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map <C-b> to toggle NvimTree
vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })  

-- Map <C-r> to compile and run C++ code
vim.api.nvim_set_keymap("n", "<C-r>", ":w<CR>:!g++ -std=c++23 -o %:r % && ./%:r<CR>", { noremap = true, silent = true }) 
