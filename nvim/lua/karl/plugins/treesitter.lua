return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    config = function()
        -- import nvim-treesitter plugin
        local treesitter = require("nvim-treesitter.configs")

        -- configure treesitter
        treesitter.setup({ -- enable syntax highlighting
            highlight = {
                enable = true,
            },
            -- enable indentation
            indent = { enable = true },
            -- ensure these language parsers are installed
            ensure_installed = {
                "markdown",
                "markdown_inline",
                "bash",
                "lua",
                "vim",
                "dockerfile",
                "gitignore",
                "json",
                "c",
                "cpp",
                "cmake",
                "objc",
                "javascript",
                "python",
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "gnn", -- Start incremental selection
                    node_incremental = "grn", -- Expand selection to next syntax node
                    scope_incremental = "grc", -- Expand selection to the entire scope
                    node_decremental = "grm", -- Shrink selection
                },
            },
        })
    end,
}
