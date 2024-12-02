local blood = {}

local colors = require("warlock.palette")

local blood_palette = vim.tbl_deep_extend("force", colors, {})

function blood.palette()
    return blood_palette
end

return blood
