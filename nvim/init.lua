-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Config
vim.wo.number = true
vim.o.clipboard = 'unnamedplus'
vim.o.mouse = 'a'
vim.opt.swapfile = false
vim.o.filetype = 'on'
vim.opt.ignorecase = true
vim.opt.hlsearch = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.termguicolors = true

-- Aliases
vim.cmd 'command! DB Dashboard'

-- Keybinds
vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap
options = { noremap = true }

vim.keymap.set('n', '<leader>pr', ':term python %<cr>')
vim.keymap.set('n', '<leader>q', ':q!')
vim.keymap.set('n', '<space>w', '<cmd>write<cr>', {desc = 'Save'})
vim.keymap.set('n', '<space>q', '<cmd>q<cr>')
vim.keymap.set({'n', 'x'}, 'cp', '"+y')
vim.keymap.set({'n', 'x'}, 'cv', '"+p')
vim.keymap.set({'n', 'x'}, 'x', '"_x')
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')

-- NvimTree keybinds
vim.keymap.set('n', '<leader>ft', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>ff', ':NvimTreeFocus<CR>')
vim.keymap.set('n', '<leader>fr', ':NvimTreeRefresh<CR>')
vim.keymap.set('n', '<leader>fn', ':NvimTreeFindFile<CR>')

-- Telescope keybinds
vim.keymap.set('n', '<leader>ts', ':Telescope find_files<CR>')

-- Dashboard keybinds
vim.keymap.set('n', '<leader>do', ':Dashboard<CR>')

-- Tabline keybinds
vim.keymap.set('n', '<leader>l', ':TablineBufferNext<CR>')
vim.keymap.set('n', '<leader>h', ':TablineBufferPrevious<CR>')
vim.keymap.set('n', '<leader>bd', ':bd<CR>')

-- Lazy Installation
local lazy = {}

function lazy.install(path)
  if not vim.loop.fs_stat(path) then
    print('Installing lazy.nvim....')
    vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      path,
    })
  end
end

function lazy.setup(plugins)
  -- You can "comment out" the line below after lazy.nvim is installed
  -- lazy.install(lazy.path)

  vim.opt.rtp:prepend(lazy.path)
  require('lazy').setup(plugins, lazy.opts)
end

lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts = {}

lazy.setup({
  {'nvim-lualine/lualine.nvim', dependencies = {{'nvim-tree/nvim-web-devicons'}}},
  {'nvim-tree/nvim-tree.lua'},
  {'kdheepak/tabline.nvim'},
  {'nvim-treesitter/nvim-treesitter'},
  {'glepnir/dashboard-nvim', dependencies = {{'nvim-tree/nvim-web-devicons'}}},
  {'nvim-telescope/telescope.nvim', dependencies = {{'nvim-lua/plenary.nvim'}}},
  {'jiangmiao/auto-pairs'},
  {'m4xshen/smartcolumn.nvim',
  	opts = {
		disabled_filetypes = { "help", "text", "markdown", "dashboard", "lazy", ".log" },
  	}
  },
  {'norcalli/nvim-colorizer.lua'},
  {'navarasu/onedark.nvim'},
  {'akinsho/toggleterm.nvim', version = "*", config = true},
})

-- Theme Setup
require('onedark').setup {
    style = 'dark',
	transparent = true,
}
require('onedark').load()

-- Colorizer Setup
require'colorizer'.setup()

-- LuaLine Setup
local endeavour = require('lualine.themes.endeavour')
require('lualine').setup({
	options = { 
		theme = 'endeavour',
		icons_enabled = true,
	},
})

-- Tree Setup
require('nvim-tree').setup({
	hijack_cursor = false,
 	renderer = {
  		special_files = {},
		symlink_destination = false,
		indent_markers = {
    		enable = true,
  		},
 	},
})

-- Tabline Setup
require("tabline").setup()

-- Telescope Setup
local telescope = require('telescope')
telescope.setup {
	pickers = {
		find_files = {
			hidden = true,
		}
	}
}

-- TreeSitter Setup
-- local nts = require 'nvim-treesitter'
require 'nvim-treesitter.configs'.setup({ 
  ensure_installed = { "python", "c", "lua", "r" },
  sync_install = true,
  highlight = { enable = true },
  additional_vim_regex_highlighting = false,
})

-- Dashboard Setup

local plugins_count = vim.fn.len(vim.fn.globpath("~/.local/share/nvim/lazy", "*", 0, 1))
local dbfooter = ' loaded ' .. plugins_count .. ' plugins'

local db = require 'dashboard'
db.setup({
  theme = 'doom',
  config = {
    header = {
	[[                                                                       ]],
	[[                                                                       ]],
	[[                                                                       ]],
	[[                                                                       ]],
	[[                                                                       ]],
	[[                                                                       ]],
	[[                                                                     ]],
	[[       ████ ██████           █████      ██                     ]],
	[[      ███████████             █████                             ]],
	[[      █████████ ███████████████████ ███   ███████████   ]],
	[[     █████████  ███    █████████████ █████ ██████████████   ]],
	[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
	[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
	[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
	[[                                                                       ]],
	[[                                                                       ]],
	}, --your header
    center = {
	    {
		    icon = '󰚰 ',
		    desc = 'Lazy',
		    key = 'l',
		    --keymap = 'SPC l u',
		    action = 'Lazy'
	    },
	    {
		    icon = ' ',
		    desc = 'New File',
		    key = 'c',
		    --keymap = 'SPC o o',
		    action = 'enew'
	    },
      {
        icon = '󰮗 ',
        --icon_hl = 'Title',
        desc = 'Telescope',
        --desc_hl = 'String',
        key = 'b',
        --keymap = 'SPC f f',
        --key_hl = 'Number',
        action = 'Telescope find_files'
      },
      {
        icon = ' ',
        desc = 'Recent Files',
        key = 'r',
        action = 'Telescope oldfiles'
      },
      {
        icon = ' ',
        desc = 'Dotfiles',
        key = 'f',
        --keymap = 'SPC f d',
        action = 'e ~/.config'
      },
	    {
		    icon = '󰌠 ',
		    desc = 'Python Files',
		    key = 'p',
		    --keymap = 'SPC g 3',
		    action = 'e /home/lharl/HDD/Programming/python_files/'
	    },
	    {
		    icon = '󰠮 ',
		    desc = 'Notes',
		    key = 'n',
		    action = 'e ~/Documents/Notes'
	    },
		{
			icon = ' ',
			desc = 'Hypr Config',
			key = 'h',
			action = 'e ~/.config/hypr/'
		}
    },

    footer = {dbfooter}
  }
})

local function arduino_status()
  if vim.bo.filetype ~= "arduino" then
    return ""
  end
  local port = vim.fn["arduino#GetPort"]()
  local line = string.format("[%s]", vim.g.arduino_board)
  if vim.g.arduino_programmer ~= "" then
    line = line .. string.format(" [%s]", vim.g.arduino_programmer)
  end
  if port ~= 0 then
    line = line .. string.format(" (%s:%s)", port, vim.g.arduino_serial_baud)
  end
  return line
end

vim.cmd([[
    :hi NvimTreeExecFile    gui=bold           guifg=#EEEEEE
    :hi NvimTreeSymlink     gui=bold           guifg=#ffff60
    :hi NvimTreeSpecialFile gui=bold,underline guifg=#ff80ff
    :hi NvimTreeImageFile   gui=bold           guifg=#ff80ff
]])
