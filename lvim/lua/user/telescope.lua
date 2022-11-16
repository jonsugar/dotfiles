local telescope_default = {
  theme = "dropdown",
  layout_config = {
    width = 0.85,
  },
  borderchars = {
    prompt = { "─", "│", " ", "│", "┌", "┐", "│", "│" },
    results = { "─", "│", "─", "│", "├", "┤", "┘", "└" },
    preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
  },
}

local telescope_no_preview = {
  theme = "dropdown",
  layout_config = {
    width = 0.85,
  },
  previewer = false,
  borderchars = {
    prompt = { "─", "│", " ", "│", "┌", "┐", "│", "│" },
    results = { "─", "│", "─", "│", "├", "┤", "┘", "└" },
  },
}

lvim.builtin.telescope.pickers.find_files = telescope_default
lvim.builtin.telescope.pickers.oldfiles = telescope_default
lvim.builtin.telescope.pickers.lsp_dynamic_workspace_symbols = telescope_default
lvim.builtin.telescope.pickers.live_grep = telescope_default
lvim.builtin.telescope.pickers.buffers = telescope_no_preview

lvim.builtin.telescope.defaults.prompt_prefix = " find: "
lvim.builtin.telescope.defaults.selection_caret = " > "
lvim.builtin.telescope.defaults.entry_prefix = "   "
