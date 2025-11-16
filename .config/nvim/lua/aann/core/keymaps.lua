-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "jl", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- 21 2 34 -3 6 7
-- increment/decrement numbers  -1 0
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Paste PRIMARY selection on middle click
vim.keymap.set("n", "<MiddleMouse>", '"+gP', { noremap = true, silent = true })

-- Dismiss Noice Message
keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Noice Messages" })

-- clever trick?
vim.opt.scrolloff = 999
-- nope

-- Always center the cursorline
keymap.set("n", "k", "kzz", { silent = true, desc = "move up" })
keymap.set("n", "j", "jzz", { silent = true, desc = "move down" })

-- Always center the search element
keymap.set("n", "n", "nzz", { silent = true, desc = "next search item" })
keymap.set("n", "N", "Nzz", { silent = true, desc = "previous search item" })

-- Always center while travelling pages
keymap.set("n", "G", "Gzz", { silent = true })

keymap.set("n", "<C-u>", "<C-u>zz", { silent = true, desc = "move half page up" })
keymap.set("n", "<C-d>", "<C-d>zz", { silent = true, desc = "move half page down" })
keymap.set("n", "<C-f>", "<C-f>zz", { silent = true, desc = "move entire page forward" })
keymap.set("n", "<C-b>", "<C-b>zz", { silent = true, desc = "move entire page next" })
