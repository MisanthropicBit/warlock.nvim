local util = {}

---@param highlights table<string, warlock.Highlight>
---@param overrides table<string, warlock.Highlight>
function util.apply_overrides(highlights, overrides)
    for hl_name, _ in pairs(highlights) do
        if overrides[hl_name:lower()] ~= nil then
            highlights[hl_name].style = overrides[hl_name:lower()]
        end
    end
end

return util
