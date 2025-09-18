return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")  -- Corrected variable name
        configs.setup({  -- Use 'configs' instead of 'config'
            highlight = {
                enable = true
            },
            indent = { enable = true },
            autotag = { enable = true },
            ensure_installed = {
                "lua",
                "python",
                "go",
                "ruby"
            },
            auto_install = false,
        })
    end
}

