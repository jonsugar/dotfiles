-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim

return {
  { "projekt0n/github-nvim-theme" },
  { "Mofiqul/dracula.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_light",
    },
  },
}
