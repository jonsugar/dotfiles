-- Shorten function name
local normalKeymap = lvim.keys.normal_mode
local insertKeymap = lvim.keys.insert_mode

-- File explorer (NvimTree)
normalKeymap["<M-e>1"] = "<cmd>NvimTreeToggle<cr>"

-- Switch window
normalKeymap["<C-h>"] = "<C-w>h"
normalKeymap["<C-j>"] = "<C-w>j"
normalKeymap["<C-k>"] = "<C-w>k"
normalKeymap["<C-l>"] = "<C-w>l"

-- Switch buffer
normalKeymap["<S-l>"] = ":bnext<CR>"
normalKeymap["<S-h>"] = ":bprevious<CR>"
insertKeymap["<S-l>"] = ":bnext<CR>"
insertKeymap["<S-h>"] = ":bprevious<CR>"

-- Go to file
normalKeymap["<M-e>f"] = "<CMD> Telescope find_files <CR>"
normalKeymap["<M-e>b"] = "<CMD> Telescope buffers <CR>"
normalKeymap["<M-e>r"] = "<CMD> Telescope oldfiles <CR>"

-- Go to symbol in file
normalKeymap["<M-e>y"] = "<CMD> Telescope lsp_dynamic_workspace_symbols <CR>"

-- Go to text in file
normalKeymap["<M-e>g"] = "<CMD> Telescope live_grep <CR>"
