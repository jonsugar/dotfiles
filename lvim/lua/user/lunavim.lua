-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃ Vim compatible configuration                                               ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
vim.opt.colorcolumn = "99999" -- fixes indentline for now
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.hidden = true -- required to keep multiple buffers and open multiple buffers
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2 -- always show tabs
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false -- creates a swapfile
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 100 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.title = true -- set the title of window to the value of the titlestring
vim.opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
vim.opt.undodir = vim.fn.stdpath "cache" .. "/undo"
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300 -- faster completion
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program) it is not allowed to be edited

-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃ Lunarvim specific configuration                                            ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

lvim.builtin.alpha.dashboard.section.header.val = {
  " _                                        _",
  "| |                                      (_)",
  "| |     _   _  _ __    __ _  _ __ __   __ _  _ __ ___",
  "| |    | | | || '_ \\  / _` || '__|\\ \\ / /| || '_ ` _ \\",
  "| |____| |_| || | | || (_| || |    \\ V / | || | | | | |",
  "|______|\\__,_||_| |_| \\__,_||_|     \\_/  |_||_| |_| |_|",
  "",
  "  .             *        .     .       .",
  "       .     _     .     .            .       .",
  ".    .   _  / |      .        .  *         _  .     .",
  "        | \\_| |                           | | __",
  "      _ |     |                   _       | |/  |",
  "     | \\      |      ____        | |     /  |    \\",
  "     |  |     \\    +/_\\/_\\+      | |    /   |     \\",
  "   _/____\\--...\\___ \\_||_/ ___...|__\\-..|____\\____/__",
  "      .     .      |_|__|_|         .       .",
  "   .    . .       _/ /__\\ \\_ .          .",
  "      .       .    .           .         .",
}

lvim.log.level = "warn"
lvim.builtin.telescope.pickers = { find_files = { find_command = { "fd", "--no-ignore", "--hidden" } } }
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
