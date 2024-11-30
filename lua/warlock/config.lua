local config = {}

local config_loaded = false

local default_config = {
    overrides = {},
}

local _user_config = default_config

function config.configure(user_config)
    _user_config = vim.tbl_deep_extend("keep", user_config or {}, default_config)
    local ok, error = config.validate(_user_config)

    if not ok then
        vim.notify("Errors found in config: " .. error, vim.log.levels.ERROR)
    else
        config_loaded = true
    end

    return ok
end

return config
