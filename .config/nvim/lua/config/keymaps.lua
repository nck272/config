local set = vim.keymap.set

set("n", ",x", "<cmd>.lua<CR>", { desc = "Execute the current line" })
set("n", ",,x", "<cmd>source %<CR>", { desc = "Execute the current file" })
