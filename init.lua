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
        'nvim-tree/nvim-tree.lua',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
        require("nvim-tree").setup()
        end
      },
      {
        'prettier/vim-prettier',
        run = 'npm install --frozen-lockfile --production'
      },
      {
        "nosduco/remote-sshfs.nvim",
        dependencies = { "nvim-telescope/telescope.nvim" },
        config = function()
        require("remote-sshfs").setup()
        require("telescope").load_extension("remote-sshfs")
        end,
      },
     {
        "windwp/nvim-ts-autotag",
        event = "InsertEnter",
        config = function()
          require("nvim-ts-autotag").setup()
       end,
      },
      {
          'nvim-telescope/telescope.nvim',
          version = '0.1.8', -- ou use `branch = '0.1.x'`
          dependencies = { 'nvim-lua/plenary.nvim' },
          lazy = false
      },
      {
        "ThePrimeagen/vim-be-good",
        cmd = "VimBeGood"
      },
      {
        "rmagatti/auto-session",
        config = function()
        require("auto-session").setup({
          log_level = "error",
          auto_session_suppress_dirs = { "~/", "~/Downloads", "/" },
          auto_restore_enabled = true,
          auto_session_enable_last_session = false,
          auto_session_root_dir = vim.fn.stdpath("config") .. "/sessions/",
        })
        end,
      },
      {
        'pocco81/auto-save.nvim',
        config = function()
          require("auto-save").setup {
            enabled = true,
            execution_message = {
              message = function() return "AutoSave: " .. vim.fn.strftime("%H:%M:%S") end,
              dim = 0.18,
              cleaning_interval = 1250,
            },
            trigger_events = {"InsertLeave", "TextChanged"},
            conditions = {
              exists = true,
              filetype_is_not = {"markdown"},
              modifiable = true
            },
            write_all_buffers = false,
         }
        end
      },
      {
        "plasticboy/vim-markdown",
        dependencies = { "godlygeek/tabular" }, -- Para formatação de tabelas
        ft = { "markdown" },
        config = function()
        vim.g.vim_markdown_folding_disabled = 0 -- Habilita folding de cabeçalhos
        vim.g.vim_markdown_conceal = 0 -- Exibe links e imagens corretamente
        vim.g.vim_markdown_new_list_item_indent = 0 -- Não indenta listas automaticamente
        end,
      },
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
      },
      {
          'nvim-treesitter/nvim-treesitter',
      },
      'mbbill/undotree',
      'theprimeagen/harpoon',
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
vim.g.vim_markdown_folding_disabled = 1
vim.cmd([[highlight Comment guifg=#c0c0c0 ctermfg=250]])

