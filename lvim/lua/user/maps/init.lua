require('user.maps.navigate')
require('user.maps.editing')

lvim.leader = "space"
vim.cmd([[
   let mapleader = ','

   nnoremap j k
   nnoremap k j

   vnoremap j k
   vnoremap k j

   nmap <LEADER>ec :tabedit /Users/jonsugar/.config/lvim/config.lua<CR>
   nmap <LEADER><SPACE> :nohlsearch<CR>
]])
