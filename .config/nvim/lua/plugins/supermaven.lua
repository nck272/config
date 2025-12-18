return {
    "supermaven-inc/supermaven-nvim",
    event = "InsertEnter",
    cmd = {
        "SupermavenUseFree",
        "SupermavenUsePro",
    },
    opts = {
        keymaps = {
            accept_suggestion = nil, -- handled by nvim-cmp / blink.cmp
        },
        disable_inline_completion = vim.g.ai_cmp,
        ignore_filetypes = { "bigfile", "snacks_input", "snacks_notif" },
    },

    {
        "saghen/blink.cmp",
        dependencies = { "supermaven-inc/supermaven-nvim", "saghen/blink.compat" },
        opts = {
            sources = {
                -- Add supermaven to the list of enabled providers
                default = { "lsp", "path", "snippets", "buffer", "supermaven" },
                providers = {
                    supermaven = {
                        kind = "Supermaven",
                        name = "supermaven",
                        module = "blink.compat.source", -- Use blink.compat for nvim-cmp sources
                        score_offset = 100, -- Optional: give it higher priority
                        async = true,
                    },
                },
            },
        },
    },
}
