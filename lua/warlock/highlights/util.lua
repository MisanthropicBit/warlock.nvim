local util = {}

---@param highlights table<string, warlock.Highlight>
function util.apply_styles(highlights, styles)
    for hl_name, _ in pairs(highlights) do
        if styles[hl_name:lower()] ~= nil then
            highlights[hl_name].style = styles[hl_name:lower()]
        end
    end
end

return util
