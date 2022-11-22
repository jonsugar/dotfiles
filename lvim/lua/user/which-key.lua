-- ==============================================================================
-- Which Key
-- ==============================================================================

lvim.builtin.which_key.setup.icons.group = "» "
lvim.builtin.which_key.setup.icons.breadcrumb = ""
lvim.builtin.which_key.setup.icons.separator = ""
lvim.builtin.which_key.setup.layout.height.max = 9
lvim.builtin.which_key.setup.layout.height.min = 7
lvim.builtin.which_key.setup.layout.spacing = 3
lvim.builtin.which_key.setup.layout.align = "center"
lvim.builtin.which_key.setup.layout.width.max = 50
lvim.builtin.which_key.setup.layout.width.min = 20
lvim.builtin.which_key.setup.window.border = "none"
lvim.builtin.which_key.setup.window.position = "top"
lvim.builtin.which_key.setup.window.margin = { 0, 0, 0, 0 }
lvim.builtin.which_key.setup.window.padding = { 1, 0, 1, 0 }

lvim.builtin.which_key.mappings["S"] = {
  name = "Settings",
  m = { "<cmd>Mason<cr>", "Linting and Formatting" },
  p = {
    name = "Packer",
    c = { "<cmd>PackerCompile<cr>", "Compile" },
    i = { "<cmd>PackerInstall<cr>", "Install" },
    r = { "<cmd>lua require('lvim.plugin-loader').recompile()<cr>", "Re-compile" },
    s = { "<cmd>PackerSync<cr>", "Sync" },
    S = { "<cmd>PackerStatus<cr>", "Status" },
    u = { "<cmd>PackerUpdate<cr>", "Update" },
  },
}
