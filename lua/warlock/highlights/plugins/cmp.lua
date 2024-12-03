local cmp = {}

---@param palette warlock.Palette
---@param config warlock.Config
---@return table<string, warlock.Highlight>
---@diagnostic disable-next-line: unused-local
function cmp.create(palette, config)
    -- stylua: ignore start
    return {
        CmpDocumentation         = { fg = palette.fg1, bg = palette.bg0 },
        CmpDocumentationBorder   = { fg = palette.sel0, bg = palette.bg0 },
        CmpItemAbbr              = { fg = palette.fg1, },
        CmpItemAbbrDeprecated    = { fg = palette.fg3, strikethrough = true },
        CmpItemAbbrMatch         = { fg = palette.blue },
        CmpItemAbbrMatchFuzzy    = { fg = palette.blue },
        CmpItemKindDefault       = { fg = palette.fg2 },
        CmpItemMenu              = { link = "Comment" },
        CmpItemKindKeyword       = { link = "Identifier" },
        CmpItemKindVariable      = { link = "@variable" },
        CmpItemKindConstant      = { link = "@constant" },
        CmpItemKindReference     = { link = "Keyword" },
        CmpItemKindValue         = { link = "Keyword" },
        CmpItemKindFunction      = { link = "Function" },
        CmpItemKindMethod        = { link = "Function" },
        CmpItemKindConstructor   = { link = "Function" },
        CmpItemKindInterface     = { link = "Constant" },
        CmpItemKindEvent         = { link = "Constant" },
        CmpItemKindEnum          = { link = "Constant" },
        CmpItemKindUnit          = { link = "Constant" },
        CmpItemKindClass         = { link = "Type" },
        CmpItemKindStruct        = { link = "Type" },
        CmpItemKindModule        = { link = "@namespace" },
        CmpItemKindProperty      = { link = "@property" },
        CmpItemKindField         = { link = "@field" },
        CmpItemKindTypeParameter = { link = "@field" },
        CmpItemKindEnumMember    = { link = "@field" },
        CmpItemKindOperator      = { link = "Operator" },
        CmpItemKindSnippet       = { fg = palette.fg2 },
    }
    -- stylua: ignore end
end

return cmp
