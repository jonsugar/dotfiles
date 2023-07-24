-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim

return {
  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
        "php",
      })
    end,
  },
}
