--{} ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

lvim.leader = "space"
vim.cmd([[

       let mapleader = ','

       nnoremap j k
       nnoremap k j

       vnoremap j k
       vnoremap k j

       nmap <leader>ec :tabedit /Users/jonsugar/.config/lvim/config.lua<cr>
       nmap <leader><space> :nohlsearch<cr>
   ]])

lvim.keys.normal_mode["<M-e>1"] = "<cmd> NvimTreeFocus <CR>"
lvim.keys.normal_mode["<C-s>"] = ":w<CR>"
lvim.keys.normal_mode["<M-e>§"] = ":b#<CR>"

lvim.keys.normal_mode["<C-.>"] = ":cnext<CR>"
lvim.keys.normal_mode["<C-,>"] = ":cprev<CR>"
lvim.keys.normal_mode["<C-A-]>"] = "]m"
lvim.keys.normal_mode["<C-A-[>"] = "[m"

lvim.keys.normal_mode["<C-z>"] = "z"

-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃ Which Key                                                                  ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

-- Configuration

lvim.builtin.which_key.setup.icons.group = ""
lvim.builtin.which_key.setup.icons.separator = ""
lvim.builtin.which_key.setup.layout.height.max = 20
lvim.builtin.which_key.setup.layout.height.min = 1
lvim.builtin.which_key.setup.layout.spacing = 3
lvim.builtin.which_key.setup.layout.width.max = 50
lvim.builtin.which_key.setup.layout.width.min = 30
lvim.builtin.which_key.setup.window.border = "single"
lvim.builtin.which_key.setup.window.position = "top"

-- Mappings

lvim.builtin.which_key.mappings["/"] = {
  "<Plug>(comment_toggle_linewise_current)", "Toggle comment"
}

-- lvim.builtin.which_key.mappings.p = nil
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
