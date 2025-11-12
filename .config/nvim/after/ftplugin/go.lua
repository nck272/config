local set = vim.opt_local

set.expandtab = false
set.tabstop = 4
set.shiftwidth = 4

vim.keymap.set("n", ",,x", function()
  vim.cmd "w"
  vim.cmd "botright split | terminal go run *.go"
end, { desc = "Execute the current .go file" })
