local fzf_lua = {}

---@param palette warlock.Palette
---@param config warlock.Config
---@return table<string, warlock.Highlight>
---@diagnostic disable-next-line: unused-local
function fzf_lua.create(palette, config)
    -- TODO: Only override groups for adjustments otherwise use defaults
    return {
        -- FzfLuaNormal = { link = "Normal" },
        -- FzfLuaBorder = { link = "Normal" },
        -- FzfLuaTitle = { link = "FzfLuaNormal" },
        -- FzfLuaBackdrop = { link = "*" },
        -- FzfLuaPreviewNormal = { link = "FzfLuaNormal" },
        -- FzfLuaPreviewBorder = { link = "FzfLuaBorder" },
        -- FzfLuaPreviewTitle = { link = "FzfLuaTitle" },
        -- FzfLuaCursor = { link = "Cursor" },
        -- FzfLuaCursorLine = { link = "CursorLine" },
        -- FzfLuaCursorLineNr = { link = "CursorLineNr" },
        -- FzfLuaSearch = { link = "IncSearch" },
        -- FzfLuaScrollBorderEmpty = { link = "FzfLuaBorder" },
        -- FzfLuaScrollBorderFull = { link = "PmenuSbar" },
        -- FzfLuaScrollFloatEmpty = { link = "PmenuThumb" },
        -- FzfLuaScrollFloatFull = { link = "menuThumb" },
        -- FzfLuaHelpNormal = { link = "FzfLuaNormal" },
        -- FzfLuaHelpBorder = { link = "FzfLuaBorder" },
        -- FzfLuaHeaderBind = { link = "*" },
        -- FzfLuaHeaderText = { link = "*" },
        -- FzfLuaPathColNr = { link = "*" },
        -- FzfLuaPathLineNr = { link = "*" },
        -- FzfLuaBufName = { link = "*" },
        -- FzfLuaBufNr = { link = "*" },
        -- FzfLuaBufFlagCur = { link = "*" },
        -- FzfLuaBufFlagAlt = { link = "*" },
        -- FzfLuaTabTitle = { link = "*" },
        -- FzfLuaTabMarker = { link = "*" },
        -- FzfLuaDirIcon = { link = "Directory" },
        -- FzfLuaDirPart = { link = "Comment" },
        -- FzfLuaFilePart = { link = "@" },
        -- FzfLuaLiveSym = { link = "*" },
        -- FzfLuaFzfNormal = { link = "FzfLuaNormal" },
        -- FzfLuaFzfCursorLine = { link = "FzfLuaCursorLine" },
        -- FzfLuaFzfMatch = { link = "Special" },
        -- FzfLuaFzfBorder = { link = "FzfLuaBorder" },
        -- FzfLuaFzfScrollbar = { link = "FzfLuaFzfBorder" },
        -- FzfLuaFzfSeparator = { link = "FzfLuaFzfBorder" },
        -- FzfLuaFzfGutter = { link = "FzfLuaNormal" },
        -- FzfLuaFzfHeader = { link = "FzfLuaTitle" },
        -- FzfLuaFzfInfo = { link = "NonText" },
        -- FzfLuaFzfPointer = { link = "Special" },
        -- FzfLuaFzfMarker = { link = "FzfLuaFzfPointer" },
        -- FzfLuaFzfSpinner = { link = "FzfLuaFzfPointer" },
        -- FzfLuaFzfPrompt = { link = "Special" },
        -- FzfLuaFzfQuery = { link = "FzfLuaNormal" },
    }
end

return fzf_lua
