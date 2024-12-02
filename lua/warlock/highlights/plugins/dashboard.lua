local dashboard = {}

---@param palette warlock.Palette
---@param config warlock.Config
---@return table<string, warlock.Highlight>
---@diagnostic disable-next-line: unused-local
function dashboard.create(palette, config)
    -- stylua: ignore start
    return {
        DashboardShortCut = { link = "Identifier" },
        DashboardHeader   = { link = "Title" },
        DashboardCenter   = { link = "String" },
        DashboardFooter   = { fg = palette.orange, italic = true },
    }
    -- stylua: ignore end
end

return dashboard
