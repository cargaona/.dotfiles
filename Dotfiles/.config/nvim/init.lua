--                                    ___           ___           ___
--           ___        ___          /__/\         /  /\         /  /\
--          /__/\      /  /\        |  |::\       /  /::\       /  /:/
--          \  \:\    /  /:/        |  |:|:\     /  /:/\:\     /  /:/
--           \  \:\  /__/::\      __|__|:|\:\   /  /:/~/:/    /  /:/  ___
--       ___  \__\:\ \__\/\:\__  /__/::::| \:\ /__/:/ /:/___ /__/:/  /  /\
--      /__/\ |  |:|    \  \:\/\ \  \:\~~\__\/ \  \:\/:::::/ \  \:\ /  /:/
--      \  \:\|  |:|     \__\::/  \  \:\        \  \::/~~~~   \  \:\  /:/
--       \  \:\__|:|     /__/:/    \  \:\        \  \:\        \  \:\/:/
--        \__\::::/      \__\/      \  \:\        \  \:\        \  \::/
--            ~~~~                   \__\/         \__\/         \__\/
-- Leader key
vim.api.nvim_set_var('mapleader', " ") -- Alternative: vim.g.mapleader = " "

-- Color Scheme
vim.api.nvim_set_option('termguicolors',true)
vim.cmd('colorscheme jellybeans')

-- Vim Imports 
vim.cmd("so ~/.config/nvim/vim-misc.vim")
vim.cmd("so ~/.config/nvim/vim-maps.vim")
vim.cmd("so ~/.config/nvim/vim-settings.vim")
vim.cmd("so ~/.config/nvim/vim-plugins.vim")
vim.cmd("so ~/.config/nvim/vim-commands.vim")
vim.cmd("so ~/.config/nvim/vim-highlights.vim")
vim.cmd("so ~/.config/nvim/vim-file-types.vim")

-- Plugins
require("plugins")
require("treesitter-config")
require("nvim-tree-config")
require("bufferline-config")
require("statusline-config")
