set nocompatible
" filetype off

call plug#begin('~/.config/nvim/plugged')

" UI
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'kyazdani42/nvim-web-devicons'
Plug 'itchyny/lightline.vim'

" Fancy UI
Plug 'MunifTanjim/nui.nvim' " Used for noice
Plug 'folke/noice.nvim'
Plug 'junegunn/goyo.vim'

" Core
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-hop.nvim'

" Core extra
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'rust-lang/rust.vim'

" Utility
Plug 'rlane/pounce.nvim'
Plug 'toppair/reach.nvim'

call plug#end()

source ~/.config/nvim/vim/_settings.vim
source ~/.config/nvim/vim/_mappings.vim
source ~/.config/nvim/vim/_lsp.vim
source ~/.config/nvim/vim/_ui.vim

lua require('init')
