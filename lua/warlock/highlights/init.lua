local highlights = {}

---@class warlock.HighlightValue
---@field fg string?
---@field bg string?
---@field bold string?
---@field undercurl string?

---@class warlock.HighlightLink
---@field link string

---@alias warlock.Highlight warlock.HighlightValue | warlock.HighlightLink

---@class warlock.Highlights
---@field groups table<string, warlock.Highlight>
---@field terminal table<string, warlock.Highlight>
---@field lsp table<string, warlock.Highlight>
---@field plugins table<string, warlock.Highlight>
---@field treesitter table<string, warlock.Highlight>
---@field languages table<string, warlock.Highlight>

--- Create highlights from a palette of colors
---@param colors table<string, string>
---@return warlock.Highlights
function highlights.create(colors)
    return {
        editor = require("warlock.highlights.editor").create(colors),
        languages = require("warlock.highlights.languages").create(colors),
        lsp = require("warlock.highlights.lsp").create(colors),
        plugins = require("warlock.highlights.plugins").create(colors),
        terminal = require("warlock.highlights.terminal").create(colors),
        treesitter = require("warlock.highlights.treesitter").create(colors),
    }
end

return highlights
