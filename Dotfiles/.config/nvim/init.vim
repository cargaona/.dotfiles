"                              ___           ___           ___
"     ___        ___          /__/\         /  /\         /  /\
"    /__/\      /  /\        |  |::\       /  /::\       /  /:/
"    \  \:\    /  /:/        |  |:|:\     /  /:/\:\     /  /:/
"     \  \:\  /__/::\      __|__|:|\:\   /  /:/~/:/    /  /:/  ___
" ___  \__\:\ \__\/\:\__  /__/::::| \:\ /__/:/ /:/___ /__/:/  /  /\
"/__/\ |  |:|    \  \:\/\ \  \:\~~\__\/ \  \:\/:::::/ \  \:\ /  /:/
"\  \:\|  |:|     \__\::/  \  \:\        \  \::/~~~~   \  \:\  /:/
" \  \:\__|:|     /__/:/    \  \:\        \  \:\        \  \:\/:/
"  \__\::::/      \__\/      \  \:\        \  \:\        \  \::/
"      ~~~~                   \__\/         \__\/         \__\/
"


" -- Leader key
let mapleader = " "                                                                     

" -- Color Scheme
set termguicolors
colorscheme spaceduck


" -- Plugins
lua require "plugins"
lua require "nvimTree"
lua require "statusline"
lua require "gitsigns"
lua require "top-bufferline"
lua require "treesitter-nvim"

" -- Vim Imports 
let conf_path = '~/.config/nvim/'
so /home/contre/.config/nvim/misc.vim
so /home/contre/.config/nvim/vim-maps.vim
so /home/contre/.config/nvim/files-type-settings.vim
so /home/contre/.config/nvim/plugins-settings.vim
so /home/contre/.config/nvim/vim-settings.vim