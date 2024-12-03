local config = {}

local config_loaded = false

---@class warlock.Style
---@field italic boolean?
---@field bold   boolean?

---@alias warlock.Styles table<string, warlock.Style>

---@class warlock.Config
---@field overrides       table<string, warlock.Highlight>
---@field terminal_colors boolean
---@field transparent     boolean
---@field styles          warlock.Styles

---@class warlock.HighlightOverride : warlock.Highlight
---@field strategy ("merge" | "replace")?

local default_config = {
    overrides = {},
    terminal_colors = true,
    transparent = false,
    styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "dark",
        floats = "dark",
    },
}

local _user_config = default_config

local function overrides_validator()
end

local function styles_validator()
end

-- stylua: ignore start
local config_schema = {
    overrides = { overrides_validator, "a valid overrides table" },
    terminal_colors = "boolean",
    transparent = "boolean",
    styles = { styles_validator, "a valid styles table" }
}
-- stylua: ignore end

---@param object table<string, unknown>
---@param schema table<string, unknown>
---@return table
local function validate_schema(object, schema)
    local errors = {}

    for key, value in pairs(schema) do
        if type(value) == "string" then
            local ok, err = pcall(vim.validate, { [key] = { object[key], value } })

            if not ok then
                table.insert(errors, err)
            end
        elseif type(value) == "table" then
            if type(object) ~= "table" then
                table.insert(errors, "Expected a table at key " .. key)
            else
                if vim.is_callable(value[1]) then
                    local ok, err = pcall(vim.validate, {
                        [key] = { object[key], value[1], value[2] },
                    })

                    if not ok then
                        table.insert(errors, err)
                    end
                else
                    vim.list_extend(errors, validate_schema(object[key], value))
                end
            end
        end
    end

    return errors
end

function config.validate(cfg)
    return validate_schema(cfg, config_schema)
end

function config.configure(user_config)
    _user_config = vim.tbl_deep_extend("keep", user_config or {}, default_config)

    local errors = config.validate(_user_config)
    local ok = #errors == 0

    if ok then
        vim.notify("Errors found in config: " .. table.concat(errors, "\n"), vim.log.levels.ERROR)
    else
        config_loaded = true
    end

    return ok
end

setmetatable(config, {
    __index = function(_, key)
        -- Lazily load configuration so there is no need to call configure explicitly
        if not config_loaded then
            config.configure()
        end

        return _user_config[key]
    end,
})

return config
