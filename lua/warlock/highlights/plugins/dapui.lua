local dapui = {}

---@param palette warlock.Palette
---@param config warlock.Config
---@return table<string, warlock.Highlight>
---@diagnostic disable-next-line: unused-local
function dapui.create(palette, config)
    -- stylua: ignore start
    return {
        DapUIVariable                = { fg = palette.white },
        DapUIScope                   = { fg = palette.cyan },
        DapUIType                    = { link = "Type" },
        DapUIValue                   = { fg = palette.white },
        DapUIModifiedValue           = { fg = palette.white, bold = true },
        DapUIDecoration              = { fg = palette.fg3 },
        DapUIThread                  = { link = "String" },
        DapUIStoppedThread           = { fg = palette.cyan },
        DapUIFrameName               = { link = "Normal" },
        DapUISource                  = { link = "Keyword" },
        DapUILineNumber              = { link = "Number" },
        DapUIFloatBorder             = { link = "FloatBorder" },
        DapUIWatchesEmpty            = { fg = palette.red },
        DapUIWatchesValue            = { fg = palette.yellow },
        DapUIWatchesError            = { fg = palette.red },
        DapUIBreakpointsPath         = { fg = palette.cyan },
        DapUIBreakpointsInfo         = { fg = palette.blue },
        DapUIBreakpointsCurrentLine  = { fg = palette.green, bold = true },
        DapUIBreakpointsLine         = { link = "DapUILineNumber" },
        DapUIBreakpointsDisabledLine = { fg = palette.comment },
    }
    -- stylua: ignore end
end

return dapui
