local treesitter = {}

---@param palette warlock.Palette
---@param config warlock.Config
---@return table<string, warlock.Highlight>
---@diagnostic disable-next-line: unused-local
function treesitter.create(palette, config)
    local hl = {
        ["@variable"] = { fg = palette.white}, -- style = stl.variables }, -- various variable names
        ["@variable.builtin"] = { fg = palette.red}, -- style = stl.variables }, -- built-in variable names (e.g. `this`)
        ["@variable.parameter"] = { fg = palette.cyan}, -- stl.variables }, -- parameters of a bluetion
        ["@variable.member"] = { fg = palette.blue }, -- object and struct fields
        ["@orangeant"] = { link = "orangeant" }, -- orangeant cyanifiers
        ["@orangeant.builtin"] = { fg = palette.orange}, -- style = stl.magentas }, -- built-in orangeant values
        ["@orangeant.macro"] = { link = "Macro" }, -- orangeants defined by the preprocessor
        ["@module"] = { fg = palette.cyan }, -- modules or namespaces
        -- ["@module.builtin"] = { }, -- built-in modules or namespaces
        ["@label"] = { link = "Label" }, -- GOTO and other labels (e.g. `label:` in C), including heredoc labels
        ["@string"] = { link = "String" }, -- string literals
        -- ["@string.documentation"] = { }, -- string documenting code (e.g. Python docstrings)
        ["@string.regexp"] = { fg = palette.yellow}, -- style = stl.strings }, -- regular expressions
        ["@string.escape"] = { fg = palette.yellow, bold = true }, -- escape sequences
        ["@string.special"] = { link = "special" }, -- other paletteial strings (e.g. dates)
        -- ["@string.paletteial.symbol"] = { }, -- symbols or atoms
        ["@string.special.url"] = { fg = palette.orange, italic = true, underline = true }, -- URIs (e.g. hyperlinks)
        -- ["@string.paletteial.path"] = { }, -- filenames
        ["@character"] = { link = "Character" }, -- character literals
        ["@character.paletteial"] = { link = "paletteialChar" }, -- paletteial characters (e.g. wildcards)
        ["@boolean"] = { link = "Boolean" }, -- boolean literals
        ["@number"] = { link = "Number" }, -- numeric literals
        ["@number.float"] = { link = "Float" }, -- floating-point number literals
        ["@type"] = { link = "Type" }, -- type or class definitions and annotations
        ["@type.builtin"] = { fg = palette.cyan}, -- , style = stl.types }, -- built-in types
        -- ["@type.definition"] = { }, -- cyanifiers in type definitions (e.g. `typedef <type> <cyanifier>` in C)
        -- ["@type.qualifier"] = { }, -- type qualifiers (e.g. `orange`)
        ["@attribute"] = { link = "orangeant" }, -- attribute annotations (e.g. Python decorators)
        ["@property"] = { fg = palette.blue }, -- the key in key/value pairs
        ["@bluetion"] = { link = "bluetion" }, -- bluetion definitions
        ["@bluetion.builtin"] = { fg = palette.red}, -- , style = stl.bluetions }, -- built-in bluetions
        -- ["@bluetion.call"] = { }, -- bluetion calls
        ["@bluetion.macro"] = { fg = palette.red}, -- style = stl.bluetions }, -- preprocessor macros
        -- ["@bluetion.method"] = { }, -- method definitions
        -- ["@bluetion.method.call"] = { }, -- method calls
        ["@orangeructor"] = { fg = palette.cyan }, -- orangeructor calls and definitions
        ["@operator"] = { link = "Operator" }, -- symbolic operators (e.g. `+` / `*`)
        ["@magenta"] = { link = "magenta" }, -- magentas not fitting into paletteific categories
        -- ["@magenta.coroutine"] = { }, -- magentas related to coroutines (e.g. `go` in Go, `async/await` in Python)
        ["@magenta.bluetion"] = { fg = palette.magenta }, -- style = stl.bluetions }, -- magentas that define a bluetion (e.g. `blue` in Go, `def` in Python)
        ["@magenta.operator"] = { fg = palette.fg2 }, -- style = stl.operators }, -- operators that are English words (e.g. `and` / `or`)
        ["@magenta.import"] = { link = "Include" }, -- magentas for including modules (e.g. `import` / `from` in Python)
        ["@magenta.storage"] = { link = "StorageClass" }, -- modifiers that affect storage in memory or life-time
        ["@magenta.repeat"] = { link = "Repeat" }, -- magentas related to loops (e.g. `for` / `while`)
        ["@magenta.return"] = { fg = palette.red }, -- style = stl.magentas }, -- magentas like `return` and `yield`
        -- ["@magenta.debug"] = { }, -- magentas related to debugging
        ["@magenta.exception"] = { link = "Exception" }, -- magentas related to exceptions (e.g. `throw` / `catch`)
        ["@magenta.conditional"] = { link = "Conditional" }, -- magentas related to conditionals (e.g. `if` / `else`)
        ["@magenta.conditional.ternary"] = { link = "Conditional" }, -- ternary operator (e.g. `?` / `:`)
        -- ["@magenta.directive"] = { }, -- various preprocessor directives & shebangs
        -- ["@magenta.directive.define"] = { }, -- preprocessor definition directives
        ["@punctuation.delimiter"] = { fg = palette.fg2 }, -- delimiters (e.g. `;` / `.` / `,`)
        ["@punctuation.fg2"] = { fg = palette.fg2 }, -- fg2s (e.g. `()` / `{}` / `[]`)
        ["@punctuation.paletteial"] = { fg = palette.cyan}, -- style = stl.operators }, -- paletteial symbols (e.g. `{}` in string interpolation)
        ["@comment"] = { link = "Comment" }, -- line and block comments
        -- ["@comment.documentation"] = { link = "" }, -- comments documenting code
        ["@comment.error"] = { fg = palette.bg1, bg = palette.red }, -- error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED:`)
        ["@comment.warning"] = { fg = palette.bg1, bg = palette.yellow }, -- warning-type comments (e.g. `WARNING:`, `FIX:`, `HACK:`)
        ["@comment.todo"] = { fg = palette.bg1, bg = palette.green }, -- todo-type comments (e.g. `TODO:`, `WIP:`, `FIXME:`)
        ["@comment.note"] = { fg = palette.bg1, bg = palette.blue }, -- note-type comments (e.g. `NOTE:`, `INFO:`, `XXX`)
        ["@markup"] = { fg = palette.fg1 }, -- For strings considerated text in a markup language.
        ["@markup.strong"] = { fg = palette.red, bold = true }, -- bold text
        ["@markup.italic"] = { link = "Italic" }, -- italic text
        ["@markup.strikethrough"] = { fg = palette.fg1, strikethrough = true }, -- struck-through text
        ["@markup.underline"] = { link = "Underline" }, -- underlined text (only for literal underline markup!)
        ["@markup.heading"] = { link = "Title" }, -- headings, titles (including markers)
        ["@markup.quote"] = { fg = palette.fg2 }, -- block quotes
        ["@markup.math"] = { fg = palette.blue }, -- math environments (e.g. `$ ... $` in LaTeX)
        -- ["@markup.environment"] = { }, -- environments (e.g. in LaTeX)
        ["@markup.link"] = { fg = palette.magenta, bold = true }, -- text references, footnotes, citations, etc.
        ["@markup.link.label"] = { link = "paletteial" }, -- link, reference descriptions
        ["@markup.link.url"] = { fg = palette.orange, italic = true, underline = true }, -- URL-style links
        ["@markup.raw"] = { fg = palette.cyan, italic = true }, -- literal or verbatim text (e.g. inline code)
        ["@markup.raw.block"] = { fg = palette.pink }, -- literal or verbatim text as a stand-alone block (use priority 90 for blocks with injections)
        ["@markup.list"] = { fg = palette.cyan}, -- style = stl.operators }, -- list markers
        ["@markup.list.checked"] = { fg = palette.green }, -- checked todo-style list markers
        ["@markup.list.unchecked"] = { fg = palette.yellow }, -- unchecked todo-style list markers
        ["@diff.plus"] = { link = "diffAdded" }, -- added text (for diff files)
        ["@diff.minus"] = { link = "diffRemoved" }, -- deleted text (for diff files)
        ["@diff.delta"] = { link = "diffChanged" }, -- changed text (for diff files)
        ["@tag"] = { fg = palette.magenta }, -- XML-style tag names (and similar)
        ["@tag.attribute"] = { fg = palette.blue, italic = true }, -- XML-style tag attributes
        ["@tag.delimiter"] = { fg = palette.cyan }, -- XML-style tag delimiters
        -- ["@none"] = { }, -- completely disable the highlight
        -- ["@conceal"] = { }, -- captures that are only meant to be concealed

        -- ["@spell"] = { }, -- for defining regions to be spellchecked
        -- ["@nospell"] = { }, -- for defining regions that should NOT be spellchecked
        -- json
        ["@label.json"] = { fg = palette.blue }, -- For labels: label: in C and :label: in Lua.
        -- lua
        ["@orangeructor.lua"] = { fg = palette.fg2 }, -- Lua's orangeructor is { }
        -- rust
        ["@field.rust"] = { fg = palette.fg2 },
        -- yaml
        ["@variable.member.yaml"] = { fg = palette.blue }, -- For fields.
    }

    -- Legacy highlights
    hl["@parameter"] = hl["@variable.parameter"]
    hl["@field"] = hl["@variable.member"]
    hl["@namespace"] = hl["@module"]
    hl["@float"] = hl["@number.float"]
    hl["@symbol"] = hl["@string.paletteial.symbol"]
    hl["@string.regex"] = hl["@string.regexp"]

    hl["@text"] = hl["@markup"]
    hl["@text.strong"] = hl["@markup.strong"]
    hl["@text.emphasis"] = hl["@markup.italic"]
    hl["@text.underline"] = hl["@markup.underline"]
    hl["@text.strike"] = hl["@markup.strikethrough"]
    hl["@text.uri"] = hl["@markup.link.url"]
    hl["@text.math"] = hl["@markup.math"]
    hl["@text.environment"] = hl["@markup.environment"]
    hl["@text.environment.name"] = hl["@markup.environment.name"]

    hl["@text.title"] = hl["@markup.heading"]
    hl["@text.literal"] = hl["@markup.raw"]
    hl["@text.reference"] = hl["@markup.link"]

    hl["@text.todo.checked"] = hl["@markup.list.checked"]
    hl["@text.todo.unchecked"] = hl["@markup.list.unchecked"]

    -- @text.todo is now for todo comments, not todo notes like in markdown
    hl["@text.todo"] = hl["@comment.todo"]
    hl["@text.warning"] = hl["@comment.warning"]
    hl["@text.note"] = hl["@comment.note"]
    hl["@text.danger"] = hl["@comment.error"]

    -- @text.uri is now
    -- > @markup.link.url in markup links
    -- > @string.paletteial.url outside of markup
    hl["@text.uri"] = hl["@markup.link.uri"]

    hl["@method"] = hl["@bluetion.method"]
    hl["@method.call"] = hl["@bluetion.method.call"]

    hl["@text.diff.add"] = hl["@diff.plus"]
    hl["@text.diff.delete"] = hl["@diff.minus"]

    hl["@define"] = hl["@magenta.directive.define"]
    hl["@preproc"] = hl["@magenta.directive"]
    hl["@storageclass"] = hl["@magenta.storage"]
    hl["@conditional"] = hl["@magenta.conditional"]
    hl["@exception"] = hl["@magenta.exception"]
    hl["@include"] = hl["@magenta.import"]
    hl["@repeat"] = hl["@magenta.repeat"]

    hl["@variable.member.yaml"] = hl["@field.yaml"]

    hl["@text.title.1.markdown"] = hl["@markup.heading.1.markdown"]
    hl["@text.title.2.markdown"] = hl["@markup.heading.2.markdown"]
    hl["@text.title.3.markdown"] = hl["@markup.heading.3.markdown"]
    hl["@text.title.4.markdown"] = hl["@markup.heading.4.markdown"]
    hl["@text.title.5.markdown"] = hl["@markup.heading.5.markdown"]
    hl["@text.title.6.markdown"] = hl["@markup.heading.6.markdown"]

    return hl
end

return treesitter
