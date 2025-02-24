return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30, -- Độ rộng sidebar
        side = "left",
      },
      renderer = {
        group_empty = false, -- Không gom nhóm thư mục rỗng
        indent_markers = {
          enable = true, -- Hiển thị dấu phân cấp
        },
      },
      filters = {
        dotfiles = true, -- Hiển thị cả file ẩn
        custom = { "^.git$", "node_modules", ".cache" }, -- Ẩn các thư mục không cần thiết
      },
      update_focused_file = {
        enable = true,
        update_root = true, -- Luôn mở thư mục chứa file hiện tại
      },
    })
  end,
}
