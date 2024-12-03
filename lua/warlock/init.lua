local warlock = {}

local config = require("warlock.config")

---@class warlock.LoadOptions
---@field theme "default" | "blood" | "bone" | "venom"

---@param theme string
---@return boolean
local function validate_theme(theme)
    return vim.tbl_contains({ "default", "blood", "bone", "venom" }, theme)
end

---@param highlights table<string, warlock.Highlight>
---@param overrides table<string, warlock.HighlightOverride>
local function apply_overrides(highlights, overrides)
    for name, value in pairs(overrides) do
        local strategy = value.strategy or "merge"

        if not highlights[name] then
            error(("Cannot override unknown highlight group '%s'"):format(name))
        end

        if strategy == "merge" then
            highlights[name] = vim.tbl_extend(highlights[name], value)
        elseif strategy == "replace" then
            highlights[name] = value
        else
            error(("Unknown override strategy '%s'"):format(strategy))
        end
    end
end

--- Load a theme
---@param options warlock.LoadOptions
function warlock.load(options)
    vim.validate({ theme = { options.theme, validate_theme }})

    if vim.version().minor < 8 then
        vim.notify_once("warlock.nvim: nvim 0.8 or higher is needed", vim.log.levels.ERROR)
        return
    end

    if not vim.o.termguicolors then
        vim.notify_once("warlock.nvim requires termguicolors", vim.log.levels.ERROR)
        return
    end

    vim.cmd("hi clear")

    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.o.background = "dark"
    vim.g.colors_name = "warlock"

    local theme_palette = require("warlock.themes." .. options.theme).palette()

    -- TODO: Set highlights directly and all at top-level
    local highlights = vim.tbl_extend(
        "force",
        require("warlock.highlights").create(theme_palette, config),
        {} -- config.overrides
    )

    apply_overrides(highlights, config.overrides)

    vim.print(vim.inspect(highlights.syntax.Function))

    for _, hls in pairs(highlights) do
        for hl_name, value in pairs(hls) do
            vim.api.nvim_set_hl(0, hl_name, value)
        end
    end
end

return warlock
