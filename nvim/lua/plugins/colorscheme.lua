return {
    { "folke/tokyonight.nvim" },
    { "tjdevries/colorbuddy.nvim" },
    {
        "tjdevries/gruvbuddy.nvim",
        config = function()
            vim.cmd.colorscheme("gruvbuddy")
        end,
    },
    { "rose-pine/neovim" },
    { "Mofiqul/dracula.nvim" },
    {
        "navarasu/onedark.nvim",
        config = function()
            require("onedark").setup({
                style = "darker",
            })
        end,
    },
}
