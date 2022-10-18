require('user.maps.navigate')
require('user.maps.editing')

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
