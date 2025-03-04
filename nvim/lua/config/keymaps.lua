-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map <C-b> to toggle NvimTree
vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })  

-- -- Map <C-r> to compile and run C++ code
-- vim.api.nvim_set_keymap("n", "<C-r>", ":w<CR>:!g++ -std=c++23 -o %:r % && ./%:r<CR>", { noremap = true, silent = true }) 

_G.compile_and_run = function()
    local get_extension = vim.fn.expand("%:e")  -- get file extension of file

    if get_extension == "cpp" then -- c++
        vim.cmd("w")
        vim.cmd("!g++ -std=c++23 -o %:r % && ./%:r")
    elseif get_extension == "py" then -- python
        vim.cmd("w")
        vim.cmd("!python3 %")
    else
        -- currently for 2 languages: c++ and python
        -- you can change this for multiple languages that you use
        print("Unsupported file type")
    end
end

lua compile_and_run()<CR
vim.api.nvim_set_keymap("n", "<C-r>", ":>", { noremap = true, silent = true })