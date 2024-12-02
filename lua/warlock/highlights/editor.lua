local editor = {}

--- Highlights related to the editor itself
---@param palette warlock.Palette
---@param config warlock.Config
---@return table<string, warlock.Highlight>
---@diagnostic disable-next-line: unused-local
function editor.create(palette, config)
    -- stylua: ignore start
    return {
        ColorColumn                = { bg = palette.bg2 },
        Conceal                    = { fg = palette.bg4 },
        -- Search result under cursor (available since neovim >0.7.0
        -- (https://github.com/neovim/neovim/commit/b16afe4d556af7c3e86b311cfffd1c68a5eed71f)).
        CurSearch                  = { link = "IncSearch" },
        Cursor                     = { fg = palette.bg1, bg = palette.fg1 },
        CursorColumn               = { link = "CursorLine" },
        CursorIM                   = { link = "Cursor" },
        CursorLine                 = { bg = palette.bg3 },
        CursorLineNr               = { fg = palette.yellow, bold = true },
        DiagnosticError            = { link = "ErrorMsg" },
        DiagnosticHint             = { fg = palette.gray },
        DiagnosticInfo             = { fg = palette.purple },
        DiagnosticOk               = { fg = palette.green },
        DiagnosticVirtualTextError = { link = "DiagnosticError" },
        DiagnosticVirtualTextHint  = { link = "DiagnosticHint" },
        DiagnosticVirtualTextInfo  = { link = "DiagnosticInfo" },
        DiagnosticVirtualTextWarn  = { link = "DiagnosticWarn" },
        DiagnosticWarn             = { link = "WarningMsg" },
        DiffAdd                    = { bg = palette.green },
        DiffChange                 = { bg = palette.yellow },
        DiffDelete                 = { fg = palette.darkred },
        DiffText                   = { fg = palette.blue },
        Directory                  = { fg = palette.blue },
        EndOfBuffer                = { fg = palette.bg1 },
        ErrorMsg                   = { fg = palette.red },
        FloatBorder                = { fg = palette.fg3 },
        FloatFooter                = { link = "FloatTitle" },
        FloatTitle                 = { link = "Title" },
        FoldColumn                 = { fg = palette.fg3 },
        Folded                     = { fg = palette.fg3, bg = palette.bg2 },
        IncSearch                  = { reverse = true },
        LineNr                     = { fg = palette.fg3 },
        MatchParen                 = { fg = palette.yellow, bold = true },
        ModeMsg                    = { link = "CursorLineNr" },
        MoreMsg                    = { fg = palette.blue, bold = true },
        NonText                    = { fg = palette.bg4 },
        Normal                     = { fg = palette.fg1, bg = config.transparent and "NONE" or palette.bg1 },
        NormalFloat                = { fg = palette.fg1, bg = palette.bg0 },
        NormalNC                   = { fg = palette.fg1 },
        Pmenu                      = { fg = palette.fg1, bg = palette.sel0 },
        PmenuSbar                  = { link = "Pmenu" },
        PmenuSel                   = { fg = palette.sel1 },
        PmenuThumb                 = { bg = palette.sel1 },
        Question                   = { link = "MoreMsg" },
        QuickFixLine               = { link = "CursorLine" },
        Search                     = { reverse = true },
        SignColumn                 = { link = "FoldColumn" },
        SpecialKey                 = { link = "NonText" },
        SpellBad                   = { fg = palette.red, undercurl = true },
        SpellCap                   = { sp = palette.yellow, undercurl = true },
        SpellLocal                 = { sp = palette.blue, undercurl = true },
        SpellRare                  = { sp = palette.blue, undercurl = true },
        StatusLine                 = { fg = palette.fg2, bg = palette.bg0 },
        StatusLineNC               = { fg = palette.fg3, bg = palette.bg0 },
        Substitute                 = { fg = palette.bg1, bg = palette.red },
        TabLine                    = { fg = palette.fg2, bg = palette.bg2 },
        TabLineFill                = { bg = palette.bg0 },
        TabLineSel                 = { fg = palette.bg1, bg = palette.fg3 },
        Title                      = { fg = palette.blue, bold = true }, -- NOTE: Change to yellow?
        VertSplit                  = { link = "WinSeparator" },
        Visual                     = { reverse = true },
        VisualNOS                  = { link = "Visual" },
        WarningMsg                 = { fg = palette.yellow },
        Whitespace                 = { fg = palette.bg3 },
        WildMenu                   = { link = "Pmenu" },
        WinSeparator               = { bg = palette.bg0 },
        Winbar                     = { fg = palette.fg3, bg = "NONE", bold = true },
        WinbarNC                   = { fg = palette.fg3, bg = "NONE" },
        lCursor                    = { link = "Cursor" },

        -- NOTE: This was commented out as there is an issue with seting this highlight group see issue #98
        -- MsgArea = vim.o.cmdheight == 0 and {link = 'StatusLine'} or { fg = palette.fg_dim },
        -- MsgSeparator = { bg = vim.o.cmdheight == 0 and palette.bg or palette.bg_m3 },

        -- DiagnosticSignError = { fg = palette.diag.error, bg = palette.bg_gutter },
        -- DiagnosticSignWarn = { fg = palette.diag.warning, bg = palette.bg_gutter },
        -- DiagnosticSignInfo = { fg = palette.diag.info, bg = palette.bg_gutter },
        -- DiagnosticSignHint = { fg = palette.diag.hint, bg = palette.bg_gutter },

        -- DiagnosticUnderlineError = { undercurl = config.undercurl, underline = not config.undercurl, sp = palette.diag.error },
        -- DiagnosticUnderlineWarn = { undercurl = config.undercurl, underline = not config.undercurl, sp = palette.diag.warning },
        -- DiagnosticUnderlineInfo = { undercurl = config.undercurl, underline = not config.undercurl, sp = palette.diag.info },
        -- DiagnosticUnderlineHint = { undercurl = config.undercurl, underline = not config.undercurl, sp = palette.diag.hint },

        -- LspSignatureActiveParameter = { fg = palette.diag.warning },
        -- LspCodeLens = { fg = palette.syn.comment },

        -- diffAdded = { fg = palette.vcs.added },
        -- diffRemoved = { fg = palette.vcs.removed },
        -- diffDeleted = { fg = palette.vcs.removed },
        -- diffChanged = { fg = palette.vcs.changed },
        -- diffOldFile = { fg = palette.vcs.removed },
        -- diffNewFile = { fg = palette.vcs.added },
        -- healthError = { fg = theme.diag.error },
        -- healthSuccess = { fg = theme.diag.ok },
        -- healthWarning = { fg = theme.diag.warning },

        --  PreCondit	preprocessor #if, #else, #endif, etc.
        --  Typedef	A typedef
        -- *Special	any special symbol
        -- Special = { fg = theme.syn.special1 },
        --  SpecialChar	special character in a constant
        --  Tag		you can use CTRL-] on this
        --  Delimiter	character that needs attention
        -- Delimiter = { fg = theme.syn.punct },
        --  SpecialComment	special things inside a comment
        --  Debug		debugging statements
        -- Underlined = { fg = theme.syn.special1, underline = true },
        -- debugPC = { bg = palette.diff.delete },
        -- debugBreakpoint = { fg = palette.syn.special1, bg = palette.bg_gutter },

        -- LspReferenceText = { bg = palette.diff.text },
        -- LspReferenceRead = { link = "LspReferenceText" },
        -- LspReferenceWrite = { bg = palette.diff.text, underline = true },
    }
    -- stylua: ignore end
end

return editor
