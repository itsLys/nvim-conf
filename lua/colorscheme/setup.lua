local colors = require("colorscheme.colors").palette

local M = {}

M.setup = function()
    vim.cmd("highlight clear")
    vim.cmd("syntax reset")
    vim.o.termguicolors = true
    vim.g.colors_name = "mytheme"

    -- Basic syntax mapping
    vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
    vim.api.nvim_set_hl(0, "Comment", { fg = colors.comment_gray, italic = true })
    vim.api.nvim_set_hl(0, "String", { fg = colors.green })
    vim.api.nvim_set_hl(0, "Function", { fg = colors.blue })
    vim.api.nvim_set_hl(0, "Keyword", { fg = colors.red, bold = true })
    vim.api.nvim_set_hl(0, "Type", { fg = colors.pink })
end

return M
