-- Reload plugins when this file changes
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Colorscheme 🤤🤤🤤
  use {
    'rebelot/kanagawa.nvim',
    config = function ()
      require'kanagawa'.setup({
        globalStatus = true,
        -- dimInactive = true,
        colors = {
            theme = {
                all = {
                    ui = {
                        bg_gutter = "none"
                    }
                }
            }
        }
      })
      vim.opt.fillchars:append({ horiz = '━', horizup = '┻', horizdown = '┳', vert = '┃', vertleft = '┨', vertright = '┣', verthoriz = '╋', })
    end
  }

  -- Everything else :D
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-symbols.nvim'
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use 'nvim-neo-tree/neo-tree.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'MunifTanjim/nui.nvim'

  use {
    'hood/popui.nvim',
    config = function ()
      vim.g.popui_border_style = "rounded"
      vim.ui.select = require"popui.ui-overrider"
      vim.ui.input = require"popui.input-overrider"
    end
  }

  use { 'nvim-treesitter/nvim-treesitter' }
  use { 'nvim-treesitter/nvim-treesitter-textobjects' }

  use 'lewis6991/gitsigns.nvim'
  use 'ggandor/leap.nvim'
  use 'nvim-lualine/lualine.nvim'
  -- use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

  use 'windwp/nvim-autopairs'
  use 'tommcdo/vim-lion'
  use 'numToStr/Comment.nvim'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'tpope/vim-rails'
  use { 'vim-crystal/vim-crystal', ft = { 'crystal' } }
  use { 'rrethy/vim-hexokinase', run = 'make hexokinase' }
  use { 'cespare/vim-toml', ft = { 'toml' } }
  use { 'rust-lang/rust.vim', ft = { 'rust' } }

  -- Autocomplete
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  -- LSP
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind.nvim'
  use 'folke/trouble.nvim'

  use 'b0o/schemastore.nvim'

  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
