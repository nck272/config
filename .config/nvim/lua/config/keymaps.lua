-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local set = vim.keymap.set

vim.api.nvim_buf_set_keymap(0, "i", "<C-k>", "lua vim.lsp.buf.signature_help()", { noremap = true, silent = true })

vim.schedule(function()
  set({ "n", "i", "v" }, "<C-s>", function()
    if vim.lsp.buf.format then
      pcall(vim.lsp.buf.format)
    end
    vim.cmd "write"
  end, { noremap = true, silent = true, desc = "Format and save file" })
end)
