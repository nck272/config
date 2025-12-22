return {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    lazy = true,
    cmd = "ConformInfo",
    opts = function()
        local opts = {
            default_format_opts = {
                timeout_ms = 3000,
                async = false, -- not recommended to change
                quiet = false, -- not recommended to change
                lsp_format = "fallback", -- not recommended to change
            },
            formatters = {
                ["clang-format"] = {
                    prepend_args = {
                        "--style",
                        "{BasedOnStyle: LLVM, IndentWidth: 4, BreakBeforeBraces: Custom, BraceWrapping: {AfterFunction: true}}",
                    },
                },
                stylua = {
                    prepend_args = function(_, ctx)
                        return { "--indent-width", vim.bo[ctx.buf].shiftwidth, "--indent-type", "Spaces" }
                    end,
                },
                prettier = {
                    prepend_args = function(_, ctx)
                        return { "--tab-width", vim.bo[ctx.buf].shiftwidth }
                    end,
                },
            },
            formatters_by_ft = {
                c = { "clang-format" },
                lua = { "stylua" },
                fish = { "fish_indent" },
                sh = { "shfmt" },
                json = { "prettier" },
            },
        }
        return opts
    end,
}
