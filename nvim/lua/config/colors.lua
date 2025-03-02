local colors = {
    Khaki = "#F0E68C",
    deep_sky_blue = "#00BFFF",
    green = "#50fa7b",
    soft_white = "#f8f8f2",
    medium_spring_green = "#00fa9a"
}

vim.api.nvim_set_hl(0, "@field", { fg = colors.medium_spring_green })
vim.api.nvim_set_hl(0, "@property", { fg = colors.medium_spring_green })
vim.api.nvim_set_hl(0, "LuaField", { fg = colors.medium_spring_green })
vim.api.nvim_set_hl(0, "@lsp.type.property", { fg = colors.medium_spring_green })
vim.api.nvim_set_hl(0, "luaFunc", { fg = colors.medium_spring_green })

vim.api.nvim_set_hl(0, "@type", { fg = colors.deep_sky_blue })
vim.api.nvim_set_hl(0, "@type.builtin", { fg = colors.deep_sky_blue })
vim.api.nvim_set_hl(0, "@function", { fg = colors.Khaki })
vim.api.nvim_set_hl(0, "@variable", { fg = colors.soft_white })