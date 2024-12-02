local warlock = {}

local config = require("warlock.config")

---@class warlock.LoadOptions
---@field theme "default" | "blood" | "bone" | "venom"

local function validate_theme(theme)
    return vim.tbl_contains({ "default", "blood", "bone", "venom" }, theme)
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

    local highlights = vim.tbl_extend(
        "force",
        require("warlock.highlights").create(theme_palette, config),
        {} -- config.overrides
    )

    vim.print(vim.inspect(highlights.syntax.Function))

    for _, hls in pairs(highlights) do
        for hl_name, value in pairs(hls) do
            vim.api.nvim_set_hl(0, hl_name, value)
        end
    end
end

return warlock
