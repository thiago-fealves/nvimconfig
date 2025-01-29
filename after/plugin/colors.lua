function ColorMyPencils(color)
    color = color or "citylights"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})

end

function LineNumberColors()
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#cccccc', bold = false, bg = 'none' })
    vim.api.nvim_set_hl(0, 'LineNr', { fg = '#cccccc', bold = false, bg = 'none' })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffcc00", bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "StatusLine", { fg = "#ffffff", bg = "none", bold = true })
end

ColorMyPencils()
LineNumberColors()
