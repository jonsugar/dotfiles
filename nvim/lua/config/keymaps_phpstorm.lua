local Util = require("lazyvim.util")

-- Emulate PHPStorm ============================================================

vim.keymap.set("n", "<C-,>", "<CMD>Dashboard<CR>")

-- Theme (ALT+`)
vim.keymap.set('n', '<A-`>', Util.telescope("colorscheme", { enable_preview = true }), {})

-- -------------------------------------
-- Buffers
-- -------------------------------------

vim.keymap.set("n", "<A-,>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
vim.keymap.set("n", "<A-.>", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<M-e>w", "<cmd>bd<cr>", { desc = "Close buffer" })

-- -------------------------------------
-- Tool Windows
-- -------------------------------------

vim.keymap.set("n", "<M-e>1", "<cmd>Neotree toggle<cr>")  -- Project (CMD+1)

-- Version Control (CMD+9)
vim.keymap.set("n", "<M-e>9", function()
  Util.float_term({ "lazygit" }, { 
    cwd = Util.get_root(), esc_esc = false, ctrl_hjkl = false })
end, { desc = "Lazygit (root dir)" })

-- -------------------------------------
-- Search / Find
-- -------------------------------------

 -- Find file     (CMD+SHIFT+O)
vim.keymap.set('n', '<M-e>f', Util.telescope("files", { cwd = false }), {})

-- Find in files (CMD+SHIFT+F)
vim.keymap.set('n', '<M-e>g', Util.telescope("live_grep", { cwd = false }), {})

-- vim.keymap.set('n', '<M-e>b', builtin.buffers, {})        -- Recent files  (ALT+e)

-- -------------------------------------
-- Move Text
-- -------------------------------------

 -- Join lines (CTRL+SHIFT+J)
vim.keymap.set({"n","v"}, "<C-S-j>", "J")
vim.keymap.set("i", "<C-S-j>", "<C-o>$<ESC>gJ==gi")

-- Move line up (ALT+SHIFT+UP)
vim.keymap.set("n", "<S-A-Up>", "<Esc>:move .-2<cr>")
vim.keymap.set("i", "<S-A-Up>", "<Esc>:move .-2<cr>==gi")
vim.keymap.set("v", "<S-A-Up>", ":move -2<cr>gv=gv")

-- Move line down (ALT+SHIFT+DOWN)
vim.keymap.set("n", "<S-A-Down>", "<Esc>:move .+1<cr>")
vim.keymap.set("i", "<S-A-Down>", "<Esc>:move .+1<cr>==gi")
vim.keymap.set("v", "<S-A-Down>", ":move '>+<cr>gv=gv")
