return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            preset = "classic",
            icons = {
                colors = true,
            },
        },
        init = function()
            vim.api.nvim_set_hl(0, "WhichKeyNormal", { bg = "NONE" })
        end,
    },
}
