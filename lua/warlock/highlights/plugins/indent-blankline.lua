local indent_blankline = {}

---@param palette warlock.Palette
---@param config warlock.Config
---@return table<string, warlock.Highlight>
---@diagnostic disable-next-line: unused-local
function indent_blankline.create(palette, config)
    -- stylua: ignore start
    return {
        IndentBlanklineChar         = { fg = palette.bg3 },
        IndentBlanklineContextChar  = { fg = palette.white },
        IndentBlanklineContextStart = { sp = palette.white, underline = true },
        IndentBlanklineIndent6      = { blend = 0, fg = palette.yellow },
        IndentBlanklineIndent5      = { blend = 0, fg = palette.red },
        IndentBlanklineIndent4      = { blend = 0, fg = palette.cyan },
        IndentBlanklineIndent3      = { blend = 0, fg = palette.orange },
        IndentBlanklineIndent2      = { blend = 0, fg = palette.blue },
        IndentBlanklineIndent1      = { blend = 0, fg = palette.pink },
    }
    -- stylua: ignore end
end

return indent_blankline
