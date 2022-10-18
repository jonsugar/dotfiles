-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃ Status bar                                                                 ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
local components = require("lvim.core.lualine.components")

lvim.builtin.lualine.sections.lualine_a = {
  components.mode,
  "mode"
}
lvim.builtin.lualine.sections.lualine_b = {
  components.branch,
}
lvim.builtin.lualine.sections.lualine_c = {
  components.diff,
  components.diagnostics,
}

lvim.builtin.lualine.sections.lualine_x = {
  components.encoding,
  components.filetype,
  components.spaces,
}
lvim.builtin.lualine.sections.lualine_y = { components.location }
lvim.builtin.lualine.sections.lualine_z = { "progress" }
