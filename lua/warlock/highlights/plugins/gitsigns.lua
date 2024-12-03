local gitsigns = {}

---@param palette warlock.Palette
---@param config warlock.Config
---@return table<string, warlock.Highlight>
---@diagnostic disable-next-line: unused-local
function gitsigns.create(palette, config)
    -- stylua: ignore start
    return {
        GitSignsAdd    = { fg = palette.green },
        GitSignsChange = { fg = palette.yellow },
        GitSignsDelete = { fg = palette.red },
    }
    -- stylua: ignore end
end

return gitsigns
