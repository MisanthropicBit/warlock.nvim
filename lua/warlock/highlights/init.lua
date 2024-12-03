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

local categories = {
    "editor",
    "languages",
    "lsp",
    "plugins",
    "syntax",
    "terminal",
    "treesitter",
}

local plugins = {
    "cmp",
    "dapui",
    "dashboard",
    "diffview",
    "gitsigns",
    "indent-blankline",
    "neogit",
    "telescope",
    "todo-comments",
    "treesitter",
}

--- Create highlights from a palette of colors
---@param palette warlock.Palette
---@param config warlock.Config
---@return warlock.Highlights
function highlights.create(palette, config)
    local hls = {}

    for _, category in ipairs(categories) do
        local group = require("warlock.highlights." .. category)
        hls[category] = group.create(palette, config)
    end

    for _, plugin in ipairs(plugins) do
        local group = require("warlock.highlights.plugins." .. plugin)
        hls[plugin] = group.create(palette, config)
    end

    return hls
end

return highlights
