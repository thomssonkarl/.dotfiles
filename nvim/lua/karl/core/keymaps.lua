vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set('n', 'x', '"_x', { noremap = true, silent = true })
keymap.set('v', 'x', '"_x', { noremap = true, silent = true })
keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jj" })
keymap.set("n", "o", "o<ESC>", { desc = "New line using o" })
keymap.set("n", "O", "O<ESC>", { desc = "New line using o" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement
