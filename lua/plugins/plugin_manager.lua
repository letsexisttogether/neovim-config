-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- TreeSitter
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- Monokai (theme)
    use { 'https://gitlab.com/__tpb/monokai-pro.nvim', as = 'monokai-pro.nvim' }

    -- Tokyo nigth (theme)
    use { 'folke/tokyonight.nvim' }

    -- One dark pro (theme)
    use { 'joshdick/onedark.vim' }

    -- GruvBox (theme)
    use { "ellisonleao/gruvbox.nvim" }

    -- Statusline style
    use { 'feline-nvim/feline.nvim', branch = '0.5-compat' }

    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Lsp-zero 
    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
          'williamboman/mason.nvim',
          run = function()
            pcall(vim.cmd, 'MasonUpdate')
          end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional
            -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
      }
    }

    -- CMake
    use { 'Shatur/neovim-cmake' }
    use { 'nvim-lua/plenary.nvim' }

    -- Async I/O
    use { "nvim-neotest/nvim-nio" }

    -- Debugger
    use { 'mfussenegger/nvim-dap' }
    use { 'jay-babu/mason-nvim-dap.nvim' }

    -- More convenient debugger
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }

    -- Minimalistic terminal
    use { "akinsho/toggleterm.nvim", tag = '*',
        config = function()
            require("toggleterm").setup()
        end 
    }
end)
