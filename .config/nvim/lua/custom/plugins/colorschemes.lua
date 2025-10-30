return {
  {
    lazy = false,
    priority = 1000,
    "tjdevries/colorbuddy.nvim",
    config = function()
      vim.cmd.colorscheme "gruvbuddy"
    end,
  },
  { "rose-pine/neovim", name = "rose-pine" },
  "eldritch-theme/eldritch.nvim",
  "rebelot/kanagawa.nvim",
  "folke/tokyonight.nvim",
  { "catppuccin/nvim", name = "catppuccin" },
}
