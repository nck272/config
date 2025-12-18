return {
    "neovim/nvim-lspconfig",
    event = "LazyFile",
    dependencies = {
        "mason.nvim",
        { "mason-org/mason-lspconfig.nvim", config = function() end },
    },
    opts = function()
        local ret = {
            diagnostics = {
                underline = true,
                update_in_insert = false,
                virtual_text = {
                    spacing = 4,
                    source = "if_many",
                    prefix = "●",
                },
                severity_sort = true,
                signs = {
                    text = {
                        [vim.diagnostic.severity.ERROR] = LazyVim.config.icons.diagnostics.Error,
                        [vim.diagnostic.severity.WARN] = LazyVim.config.icons.diagnostics.Warn,
                        [vim.diagnostic.severity.HINT] = LazyVim.config.icons.diagnostics.Hint,
                        [vim.diagnostic.severity.INFO] = LazyVim.config.icons.diagnostics.Info,
                    },
                },
            },
            inlay_hints = {
                enabled = true,
                exclude = { "vue" }, -- filetypes for which you don't want to enable inlay hints
            },
            codelens = { enabled = false },
            folds = { enabled = true },
            servers = {
                ["*"] = {
                    gopls = { enabled = true },
                    lua_ls = { enabled = true },
                    clangd = { enabled = true },
                    pyright = { enabled = true },
                },
            },
            format = {
                formatting_options = nil,
                timeout_ms = nil,
            },
        }
        return ret
    end,
}
