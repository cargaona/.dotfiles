--[[
      ___                                    ___     
     /__/\          ___        ___          /__/\    
     \  \:\        /__/\      /  /\        |  |::\   
      \  \:\       \  \:\    /  /:/        |  |:|:\  
  _____\__\:\       \  \:\  /__/::\      __|__|:|\:\ 
 /__/::::::::\  ___  \__\:\ \__\/\:\__  /__/::::| \:\
 \  \:\~~\~~\/ /__/\ |  |:|    \  \:\/\ \  \:\~~\__\/
  \  \:\  ~~~  \  \:\|  |:|     \__\::/  \  \:\      
   \  \:\       \  \:\__|:|     /__/:/    \  \:\     
    \  \:\       \__\::::/      \__\/      \  \:\    
     \__\/           ~~~~                   \__\/    
--]]

-- Plugins
require("lsp")
require("plugins")
require("custom.git")
require("schlepp-config")
require("gitsigns-config")
require("nvim-cmp-config")
require("md-fenced-config")
require("nvim-tree-config")
require("telescope-config")
require("bufferline-config")
require("statusline-config")
require("treesitter-config")
require("quick-scope-config")
require("colorscheme-config")

-- Leader key
vim.g.mapleader = " "

---- Vim Imports
vim.cmd("so ~/.config/nvim/misc.vim")
vim.cmd("so ~/.config/nvim/mappings.vim")
vim.cmd("so ~/.config/nvim/settings.vim")
vim.cmd("so ~/.config/nvim/commands.vim")
vim.cmd("so ~/.config/nvim/autocomands.vim")
