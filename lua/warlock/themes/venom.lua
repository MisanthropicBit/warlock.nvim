local venom = {}

local colors = require("warlock.palette")

local venom_palette = vim.tbl_deep_extend("force", colors, {})

function venom.palette()
    return venom_palette
end

return venom
