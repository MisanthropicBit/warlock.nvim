local telescope = {}

---@param palette warlock.Palette
---@param config warlock.Config
---@return table<string, warlock.Highlight>
---@diagnostic disable-next-line: unused-local
function telescope.create(palette, config)
    -- stylua: ignore start
    return {
        TelescopeBorder         = { fg = palette.bg4 },
        TelescopeSelectionCaret = { fg = palette.green },
        TelescopeSelection      = { link = "CursorLine" },
        TelescopeMatching       = { link = "Search" },
    }
    -- stylua: ignore end
end

return telescope
