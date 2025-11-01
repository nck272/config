-- NOTE: highlight yanked area
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking, copying text",
  group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
