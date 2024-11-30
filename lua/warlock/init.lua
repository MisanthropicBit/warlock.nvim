local warlock = {}

-- local config = require("warlock.config")

--- Load a theme
---@param theme "default" | "blood" | "bone" | "venom"
function warlock.load(theme)
    vim.cmd("hi clear")

    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    if not vim.o.termguicolors then
        vim.notify_once("warlock.nvim requires termguicolors", vim.log.levels.ERROR)
    end

    vim.o.background = "dark"
    vim.g.colors_name = "warlock"

    local colors = require("warlock.colors")
    local theme_colors = require("warlock.themes")[theme](colors)
    local highlights = vim.tbl_extend(
        "force",
        require("warlock.highlights").create(theme_colors),
        {} -- config.overrides
    )

    for _, hls in pairs(highlights) do
        for hl_name, value in pairs(hls) do
            vim.api.nvim_set_hl(0, hl_name, value)
        end
    end
end

return warlock
