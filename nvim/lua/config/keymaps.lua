-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

require("config.keymaps_phpstorm")

local Util = require("lazyvim.util")

-- -------------------------------------
-- Motion
-- -------------------------------------
vim.keymap.set({"n", "v"}, "k", "j")
vim.keymap.set({"n", "v"}, "j", "k")

-- Reselect visual selection after indenting
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- Maintain the cursor position when yanking a visual selection
-- http://ddrscott.github.io/blog/2016/yank-without-jank/
vim.keymap.set("v", "y", "myy`y")
vim.keymap.set("v", "Y", "myY`y")

-- Paste replace visual selection without copying it
vim.keymap.set("v", "p", '"_dP')

-- Open the current file in the default program (on Mac this should just be just `open`)
vim.keymap.set("n", "<leader>o", ":!open %<cr><cr>")

-- Disable annoying command line thing
vim.keymap.set("n", "q:", ":q<CR>")

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- Move text up and down
vim.keymap.set("i", "<A-k>", "<Esc>:move .+1<CR>==gi")
vim.keymap.set("i", "<A-j>", "<Esc>:move .-2<CR>==gi")
vim.keymap.set("n", "<A-k>", "<Esc>:move .+1<CR>==gi")
vim.keymap.set("n", "<A-j>", "<Esc>:move .-2<CR>==gi")
vim.keymap.set("x", "<A-k>", ":move '>+1<CR>gv-gv")
vim.keymap.set("x", "<A-j>", ":move '<-2<CR>gv-gv")

-- save file
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
vim.keymap.set({ "i", "x", "n", "s" }, "<M-e>s", "<cmd>w<cr><esc>", { desc = "Save file" })
