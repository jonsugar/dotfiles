-- Shorten function name
local normalKeymap = lvim.keys.normal_mode
local insertKeymap = lvim.keys.insert_mode
local visualKeymap = lvim.keys.visual_mode
local blockKeymap = lvim.keys.visual_block_mode

-- Move text up and down
normalKeymap["<A-j>"] = ":m+<CR>=="
normalKeymap["<A-k>"] = ":m-2<CR>=="
insertKeymap["<A-j>"] = "<ESC>:m+<CR>==gi"
insertKeymap["<A-k>"] = "<Esc>:m-2<CR>==gi"
visualKeymap["<A-j>"] = ":m '>+1<CR>gv=gv"
visualKeymap["<A-k>"] = ":m '<-2<CR>gv=gv"
blockKeymap["<A-j>"] = ":move '>+1<CR>gv-gv"
blockKeymap["<A-k>"] = ":move '<-2<CR>gv-gv"

-- Indent --
visualKeymap["<"] = "<gv"
visualKeymap[">"] = ">gv"

-- Save buffer
normalKeymap["<M-e>s"] = "<CMD> :w! <CR>"
normalKeymap["<C-s>"] = "<CMD> :w! <CR>"
insertKeymap["<C-s>"] = "<C-O>:w!<CR>"
insertKeymap["<M-e>s"] = "<C-O>:w!<CR>"
insertKeymap["<M-e>s"] = "<C-O>:w!<CR>"

-- Comments
normalKeymap["<M-e>cl"] = "<Plug>(comment_toggle_linewise_current)"
normalKeymap["<M-e>cb"] = "<Plug>(comment_toggle_blockwise_current)"
visualKeymap["<M-e>cl"] = "<Plug>(comment_toggle_linewise_visual)gv"
visualKeymap["<M-e>cb"] = "<Plug>(comment_toggle_blockwise_visual)gv"
insertKeymap["<M-e>cl"] = "<ESC><Plug>(comment_toggle_linewise_current)gi"
insertKeymap["<M-e>cb"] = "<ESC><Plug>(comment_toggle_blockwise_current)gi"

--- Folding
normalKeymap["<C-z>"] = "z"
