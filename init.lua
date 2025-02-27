require("oracle")
-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "failed to clone lazy.nvim:\n", "errormsg" },
      { out, "warningmsg" },
      { "\npress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- this is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
  
-- setup lazy.nvim
require("lazy").setup({
  spec = {
      {
          'nvim-telescope/telescope.nvim',
          version = '0.1.8', -- ou use `branch = '0.1.x'`
          dependencies = { 'nvim-lua/plenary.nvim' },
          lazy = false
      },
      --{
      --    'bluz71/vim-moonfly-colors',
      --    config = function()
      --        vim.cmd [[colorscheme moonfly]]
      --    end,
      --},
      {"saltmade/citylights.vim"}, 
      {'akinsho/toggleterm.nvim', version = "*", config = true},
      {
  	'nvimdev/dashboard-nvim',
  	event = 'vimenter',
  	config = function()
		require('dashboard').setup {
      			config = {
        		header = {
          		  "     ██████╗ ██████╗  █████╗  ██████╗██╗     ███████╗",
                "    ██╔═══██╗██╔══██╗██╔══██╗██╔════╝██║     ██╔════╝",
                "    ██║   ██║██████╔╝███████║██║     ██║     █████╗  ",
                "    ██║   ██║██╔══██╗██╔══██║██║     ██║     ██╔══╝  ",
                "    ╚██████╔╝██║  ██║██║  ██║╚██████╗███████╗███████╗",
                "     ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚══════╝╚══════╝",
                "                                                     "
        	},
          footer = {
          "                                          ",
          "               💀 memento mori 💀         ",
          }
    	}
	}
  	end,
  	dependencies = { {'nvim-tree/nvim-web-devicons'} }
      };
      {
          'nvim-treesitter/nvim-treesitter',
      },
      'theprimeagen/harpoon',
      'mbbill/undotree',
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/nvim-cmp',
      'vonheikemen/lsp-zero.nvim',
      'm4xshen/autoclose.nvim'
  },
  -- configure any other settings here. see the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = false },
})
vim.cmd([[highlight Comment guifg=#c0c0c0 ctermfg=250]])
