-- Alt purple: #9f7ee7 #68588a #c792ea #8f71cf #cd85ad
-- browns: #ba8484 #d29494
-- Alt green: #a4bd8e #84ba84
-- Alt blue: #90a1b2
-- Bone: #fdf8ce, #e3dac9
-- Alt pink: #fa198b, #b91372

---@class warlock.Palette
---@field fg0 string
---@field fg1 string
---@field fg2 string
---@field fg3 string
---@field bg0 string
---@field bg1 string
---@field bg2 string
---@field bg3 string
---@field bg4 string
---@field blue string
---@field brown string
---@field cyan string
---@field darkgreen string
---@field darkpurple string
---@field darkred string
---@field gray string
---@field green string
---@field lightblue string
---@field lightgreen string
---@field orange string
---@field pink string
---@field purple string
---@field magenta string
---@field red string
---@field white string
---@field yellow string
---@field none "NONE"

local lol = '#d2ad8e'

-- Duskfox
-- local palette = {
--   black   = Shade.new("#393552", "#47407d", "#322e42"),
--   red     = Shade.new("#eb6f92", "#f083a2", "#d84f76"),
--   green   = Shade.new("#a3be8c", "#b1d196", "#8aa872"),
--   yellow  = Shade.new("#f6c177", "#f9cb8c", "#e6a852"),
--   blue    = Shade.new("#569fba", "#65b1cd", "#4a869c"),
--   magenta = Shade.new("#c4a7e7", "#ccb1ed", "#a580d2"),
--   cyan    = Shade.new("#9ccfd8", "#a6dae3", "#7bb8c1"),
--   white   = Shade.new("#e0def4", "#e2e0f7", "#b1acde"),
--   orange  = Shade.new("#ea9a97", "#f0a4a2", "#d6746f"),
--   pink    = Shade.new("#eb98c3", "#f0a6cc", "#d871a6"),
--
--   comment = "#817c9c",
--
--   bg0     = "#191726", -- Dark bg (status line and float)
--   bg1     = "#232136", -- Default bg
--   bg2     = "#2d2a45", -- Lighter bg (colorcolm folds)
--   bg3     = "#373354", -- Lighter bg (cursor line)
--   bg4     = "#4b4673", -- Conceal, border fg
--
--   fg0     = "#eae8ff", -- Lighter fg
--   fg1     = "#e0def4", -- Default fg
--   fg2     = "#cdcbe0", -- Darker fg (status line)
--   fg3     = "#6e6a86", -- Darker fg (line numbers, fold colums)
--
--   sel0    = "#433c59", -- Popup bg, visual selection bg
--   sel1    = "#63577d", -- Popup sel bg, search bg
-- }

-- Yellows: e09f3e
-- Reds: 9e2a2b, b01c25
-- Blues: 5555d4, 6c6cda, #8ea2b8
-- Browns: af6e4d, #d29494

---@type warlock.Colors
return {
    fg0 = '#bcbfbd',
    fg1 = '#e3dac9',
    fg2 = "#cdcbe0",
    fg3 = "#6e6a86",
    bg0 = '#282c34',
    bg1 = "#232136", -- '#424855',
    bg2 = "#2d2a45", -- '#343944',
    bg3 = "#373354",
    bg4 = "#4b4673",
    blue = "#65b1cd", -- '#5555d4', -- change
    brown = '#af6e4d', -- change
    cyan = "#9ccfd8", -- '#8cbeb7',
    darkgreen = '#475b35',
    darkpurple = '#331f47', -- '#5c3880',
    darkred = '#9e2a2b',
    gray = '#c5c5c5',
    green = "#a3be8c", -- '#a4bd8e', -- change
    lightblue = '#97b7f3',
    lightgreen = '#b5d5b5',
    orange = "#f0a4a2", -- '#dd9364',
    pink = "#f0a6cc", '#e9a6e9',
    purple = '#966dbf',
    magenta = "#c4a7e7",
    red = '#dd4050',
    white = '#eae9fe',
    yellow = "#f6c177", -- '#d2ad8e', -- '#2e9e9e',
    black = "#000000",
    paleblue = "#d6e7f0",
    bg = "#212337",
    bg_alt = "#1B1E2B",
    fg = "#e4f3fa",
    text = "#757dac",
    comments = "#7486d6",
    selection = "#403c64",
    contrast = "#1b1c2b",
    active = "#414863",
    border = "#414863",
    line_numbers = "#596399",
    highlight = "#a1abe0",
    disabled = "#515772",
    cursor = "#5cb4fc",
    accent = "#a3ace1",
    error = "#FF5370",
    link = "#80CBC4",
    none = "NONE",

    -- TODO: Change these into color names
    sel0    = "#433c59", -- Popup bg, visual selection bg
    sel1    = "#63577d", -- Popup sel bg, search bg
    comment = "#817c9c",
}


---@type warlock.Colors
-- return {
--     fg0 = '#bcbfbd',
--     fg1 = '#e3dac9',
--     bg0 = '#282c34',
--     bg1 = '#424855',
--     bg2 = '#343944',
--     blue = '#5555d4', -- change
--     brown = '#af6e4d', -- change
--     cyan = '#8cbeb7',
--     darkgreen = '#475b35',
--     darkpurple = '#331f47', -- '#5c3880',
--     darkred = '#9e2a2b',
--     gray = '#c5c5c5',
--     green = '#a4bd8e', -- change
--     lightblue = '#97b7f3',
--     lightgreen = '#b5d5b5',
--     orange = '#dd9364',
--     pink = '#e9a6e9',
--     purple = '#966dbf',
--     red = '#dd4050',
--     white = '#eae9fe',
--     yellow = '#d2ad8e', -- '#2e9e9e',
--     black = "#000000",
--     paleblue = "#d6e7f0",
--     bg = "#212337",
--     bg_alt = "#1B1E2B",
--     fg = "#e4f3fa",
--     text = "#757dac",
--     comments = "#7486d6",
--     selection = "#403c64",
--     contrast = "#1b1c2b",
--     active = "#414863",
--     border = "#414863",
--     line_numbers = "#596399",
--     highlight = "#a1abe0",
--     disabled = "#515772",
--     cursor = "#5cb4fc",
--     accent = "#a3ace1",
--     error = "#FF5370",
--     link = "#80CBC4",
--     none = "NONE",
-- }

-- black   = Shade.new("#393552", "#47407d", "#322e42"),
-- red     = Shade.new("#eb6f92", "#f083a2", "#d84f76"),
-- green   = Shade.new("#a3be8c", "#b1d196", "#8aa872"),
-- yellow  = Shade.new("#f6c177", "#f9cb8c", "#e6a852"),
-- blue    = Shade.new("#569fba", "#65b1cd", "#4a869c"),
-- magenta = Shade.new("#c4a7e7", "#ccb1ed", "#a580d2"),
-- cyan    = Shade.new("#9ccfd8", "#a6dae3", "#7bb8c1"),
-- white   = Shade.new("#e0def4", "#e2e0f7", "#b1acde"),
-- orange  = Shade.new("#ea9a97", "#f0a4a2", "#d6746f"),
-- pink    = Shade.new("#eb98c3", "#f0a6cc", "#d871a6"),
