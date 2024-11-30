local Color = require("nightfox.lib.color")

---@class Gradient
---@field base string
---@field bright string
---@field dim string
---@field light boolean

local Gradient = {}
Gradient.__index = Gradient

function Gradient.new(base, bright, dim, light)
    local self = setmetatable({}, Gradient)

    base = type(base) == "string" and Color.from_hex(base) or base
    bright = type(bright) == "string" and Color.from_hex(bright)
    or type(bright) == "number" and base:shade(bright)
    or bright
    dim = type(dim) == "string" and Color.from_hex(dim) or type(dim) == "number" and base:shade(dim) or dim

    self.base = base:to_css()
    self.bright = bright:to_css()
    self.dim = dim:to_css()
    self.light = light or false

    return self
end

Gradient.__call = function(self)
    return self.base
end

function Gradient:subtle()
    return self.light and self.bright or self.dim
end

function Gradient:harsh()
    return self.light and self.dim or self.bright
end

return Gradient
