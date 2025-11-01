local set = vim.keymap.set

-- Basic movement keybinds, these make navigating splits easy for me
set("n", "<c-j>", "<c-w><c-j>")
set("n", "<c-k>", "<c-w><c-k>")
set("n", "<c-h>", "<c-w><c-l>")
set("n", "<c-l>", "<c-w><c-h>")

set("n", ",x", "<cmd>.lua<CR>", { desc = "Execute the current line" })
set("n", ",,x", "<cmd>source %<CR>", { desc = "Execute the current file" })

-- These mappings control the size of splits (height/width)
set("n", "<M-h>", "<c-w>5<")
set("n", "<M-l>", "<c-w>5>")
set("n", "<M-k>", "<C-W>+")
set("n", "<M-j>", "<C-W>-")

set("n", "<M-down>", function()
  if vim.opt.diff:get() then
    vim.cmd [[normal! ]c]]
  else
    vim.cmd [[m .+1<CR>==]]
  end
end)

set("n", "<M-up>", function()
  if vim.opt.diff:get() then
    vim.cmd [[normal! [c]]
  else
    vim.cmd [[m .-2<CR>==]]
  end
end)

set("n", "<space>tt", function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = 0 }, { bufnr = 0 })
end)

vim.api.nvim_set_keymap("n", ",t", "<Plug>PlenaryTestFile", { noremap = false, silent = false })

vim.keymap.set("n", "]]", "<cmd>cnext<CR>", { silent = true })
vim.keymap.set("n", "[[", "<cmd>cprev<CR>", { silent = true })

-- Clear the search highlighting
vim.keymap.set("n", "<esc>", vim.cmd.noh, { silent = true })

-- Save the current file
vim.api.nvim_buf_set_keymap(0, "i", "<C-k>", "lua vim.lsp.buf.signature_help()", { noremap = true, silent = true })

-- vim.schedule(function()
--   set({ "n", "i", "v" }, "<C-s>", function()
--     if vim.lsp.buf.format then
--       pcall(vim.lsp.buf.format)
--     end
--     vim.cmd "write"
--   end, { noremap = true, silent = true, desc = "Format and save file" })
-- end)
