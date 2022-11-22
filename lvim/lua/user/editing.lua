-- ==============================================================================
-- Vim compatible configuration
-- ==============================================================================

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.smartcase = true -- smart case
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.cursorline = true -- highlight the current line
vim.opt.number = true -- set numbered lines
vim.opt.relativenumber = true -- set relative numbered lines
vim.opt.numberwidth = 4 -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes" -- always show the sign column otherwise it would shift the text each time
vim.opt.wrap = true -- display lines as one long line
vim.opt.spell = false
vim.opt.spelllang = "en"
vim.opt.scrolloff = 8 -- is one of my fav
vim.opt.sidescrolloff = 8

-- ==============================================================================
-- Lunarvim specific configuration
-- ==============================================================================

lvim.format_on_save = true

-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "tailwindcss" })
require("lvim.lsp.manager").setup("tailwindcss")

-- The treesiter parsers I want
lvim.builtin.treesitter.ensure_installed = {
  "bash", "c", "javascript", "json", "lua", "python", "typescript", "tsx", "css", "rust", "java", "yaml", "scala"
}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

lvim.autocommands = {
  {
    "BufWinEnter", {
      pattern = { "*.*" },
      command = "normal zR",
    }
  },
  {
    "BufWinEnter", {
      pattern = { "*.php", "*.html", "*.js" },
      callback = function()
        vim.cmd [[
          setlocal tabstop=4 shiftwidth=4
        ]]
      end
    },
  }
}
