local bone = {}

local colors = require("warlock.palette")

local bone_palette = vim.tbl_deep_extend("force", colors, {})

function bone.palette()
    return bone_palette
end

return bone
