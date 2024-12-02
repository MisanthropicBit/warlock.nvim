local syntax = {}

        -- Comment = { fg = palette.bg2, bg = palette.none },
        -- Constant = { fg = palette.gray },
        -- String = { fg = palette.darkgreen },
        -- Character = { fg = palette.lightgreen },
        -- Number = { fg = palette.pink },
        -- Boolean = { fg = palette.yellow, bold = true },
        -- Float = { link = "Number" },
        -- Identifier = { fg = palette.cyan },
        -- Function = { fg = palette.brown },
        -- Statement = { fg = palette.purple },
        -- Operator = { fg = palette.blue },
        -- Keyword = { fg = palette.blue },
        -- Exception = { fg = palette.darkred },
        -- PreProc = { fg = palette.lightgreen },
        -- Define = { link = "PreProc" },
        -- Macro = { link = "PreProc" },
        -- Type = { fg = palette.purple },
        -- StorageClass = { fg = palette.cyan },
        -- Structure = { fg = palette.purple },
        -- Bold = { bold = true },
        -- Italic = { italic = true },
        -- Ignore = { link = "NonText" },
        -- Error = { fg = palette.darkred },
        -- Todo = { fg = palette.darkgreen, bg = palette.lightgreen, bold = true },
        --
--- Highlights related to syntax elements
---@param palette warlock.Palette
---@param config warlock.Config
---@return table<string, warlock.Highlight>
function syntax.create(palette, config)
    -- local styles = config.styles

    return {
        Comment        = { fg = palette.comment }, -- style = styles.comments },
        Constant       = { fg = palette.orange },
        String         = { fg = palette.green }, -- style = styles.strings },
        Character      = { link = "String" },
        Number         = { fg = palette.orange}, -- style = styles.numbers },
        Float          = { link = "Number" },
        Boolean        = { link = "Number" }, -- NOTE: Change
        Identifier     = { fg = palette.cyan }, -- style = styles.variables },
        Function       = { fg = palette.blue }, -- style = styles.functions },
        Statement      = { fg = palette.magenta}, -- style = styles.keywords },
        Conditional    = { fg = palette.magenta}, -- style = styles.conditionals },
        Repeat         = { link = "Conditional" }, -- NOTE: Change
        Label          = { link = "Conditional" }, -- case, default, etc. -- NOTE: Change
        Operator       = { fg = palette.fg2}, -- style = styles.operators },
        Keyword        = { fg = palette.magenta}, -- style = styles.keywords },
        Exception      = { link = "Keyword" }, -- NOTE: Change to ErrorMsg?
        PreProc        = { fg = palette.pink}, -- style = styles.preprocessor },
        Include        = { link = "PreProc" },
        Define         = { link = "PreProc" },
        Macro          = { link = "PreProc" },
        PreCondit      = { link = "PreProc" },
        Type           = { fg = palette.yellow}, -- style = styles.types },
        StorageClass   = { link = "Type" }, -- NOTE: Change
        Structure      = { link = "Type" }, -- NOTE: Change
        Typedef        = { link = "Type" }, -- NOTE: Change
        Special        = { fg = palette.blue },
        SpecialChar    = { link = "Special" },
        Tag            = { link = "Special" },
        Delimiter      = { link = "Special" },
        SpecialComment = { link = "Special" },
        Debug          = { link = "Special" },
        Underlined     = { underline = true },
        Bold           = { bold = true },
        Italic         = { italic = true },
        Error          = { fg = palette.red },
        Todo           = { fg = palette.bg1, bg = palette.blue },
        qfLineNr       = { link = "lineNr" },
        qfFileName     = { link = "Directory" },
        -- htmlH1       = {},
        -- htmlH2       = {},
        -- mkdHeading            = {},
        -- mkdCode               = {},
        -- mkdCodeDelimiter      = {},
        -- mkdCodeStart          = {},
        -- mkdCodeEnd            = {},
        -- mkdLink               = {},
        -- markdownHeadingDelimiter = {},
        -- markdownCode             = {},
        -- markdownCodeBlock        = {},
        -- markdownH1               = {},
        -- markdownH2               = {},
        -- markdownLinkText         = {},
        -- Diff filetype (runtime/syntax/diff.vim)
        diffAdded      = { fg = palette.green }, -- Added lines ("^+.*" | "^>.*")
        diffRemoved    = { fg = palette.red },-- Removed lines ("^-.*" | "^<.*")
        diffChanged    = { fg = palette.blue }, -- Changed lines ("^! .*")
        diffOldFile    = { fg = palette.yellow }, -- Old file that is being diff against
        diffNewFile    = { fg = palette.green }, -- New file that is being compared to the old file
        diffFile       = { fg = palette.blue }, -- The filename of the diff ("diff --git a/readme.md b/readme.md")
        diffLine       = { fg = palette.orange }, -- Line information ("@@ -169,6 +169,9 @@")
        diffIndexLine  = { fg = palette.pink }, -- Index line of diff ("index bf3763d..94f0f62 100644")
    }
end

return syntax
