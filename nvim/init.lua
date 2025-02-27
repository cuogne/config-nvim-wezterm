-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_set_keymap("n", "<C-r>", ":w<CR>:!g++ -std=c++23 -o %:r % && ./%:r<CR>", { noremap = true, silent = true })

-- Neo-Tree: hiển thị danh sách file và folder như dạng của VSCode
require("neo-tree").setup({
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
      hide_by_name = { ".git", "node_modules" }, -- Ẩn các thư mục không cần thiết
      always_show = { ".gitignore" }, -- Luôn hiển thị .gitignore nếu muốn
    },
    follow_current_file = true,
    hijack_netrw_behavior = "open_current",
  },
})
