-- Bootstrapping
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
        'git', 'clone', '--depth', '1',
        'https://github.com/wbthomason/packer.nvim', install_path
    })
    vim.cmd 'packadd packer.nvim'
end

return require('packer').startup(function()
    -- ======================= UTILITIES ================================== --
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- lsp configurations
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'ray-x/lsp_signature.nvim'
    use 'onsails/lspkind-nvim'

    -- snippets
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    use 'hrsh7th/cmp-vsnip'
    use 'rafamadriz/friendly-snippets'

    -- telescope - fuzzy finder and more
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}}
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}

    -- auto-pairing brackets
    use 'windwp/nvim-autopairs'

    -- keybindings
    use 'folke/which-key.nvim'

    -- essential web dev tool I just want to try out
    use 'mattn/emmet-vim'

    -- autoformatting -- trying out this plugin for now
    use 'sbdchd/neoformat'

    -- terminal inside neovim -- floating
    use 'voldikss/vim-floaterm'

    -- markdown preview in browser
    use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'}

    -- git stuff
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'

    -- ARM assembly syntax hightlighting
    use 'ARM9/arm-syntax-vim'

    -- ========================== UI ====================================== --
    -- better syntax highlighting with tree-sitter and more
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- colorscheme
    use 'rmehri01/onenord.nvim'

    -- fancy statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- todo comments
    use {'folke/todo-comments.nvim', requires = 'nvim-lua/plenary.nvim'}

    -- dashboard
    use 'glepnir/dashboard-nvim'

    -- add indentation guides to all lines (including empty lines).
    use 'lukas-reineke/indent-blankline.nvim'

    -- colors for hex color values
    use {'rrethy/vim-hexokinase', run = 'make hexokinase'}

    -- icons/glyphs
    use 'kyazdani42/nvim-web-devicons'

    -- file-explorer (netrw is nice but this looks nicer)
    use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}

    -- ======================= WRITING ================================== --
    --  plugins for writing
    use 'folke/zen-mode.nvim'
    use 'folke/twilight.nvim'
    use 'vimwiki/vimwiki'

    -- installing org.vim so I can view org files in vim with syntax
    -- highlighting in case Doom Emacs breaks on me.
    use 'axvr/org.vim'
end)
